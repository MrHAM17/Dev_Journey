package com.firstbankdigitalbanking.app.modules.otp.ui

import android.content.Intent
import android.content.IntentFilter
import androidx.activity.result.ActivityResultCallback
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityOtpBinding
import com.firstbankdigitalbanking.app.modules.newpassword.ui.NewPasswordActivity
import com.firstbankdigitalbanking.app.modules.otp.`data`.viewmodel.OtpVM
import com.google.android.gms.auth.api.phone.SmsRetriever
import java.util.regex.Matcher
import java.util.regex.Pattern
import kotlin.String
import kotlin.Unit

class OtpActivity : BaseActivity<ActivityOtpBinding>(R.layout.activity_otp) {
  private var otpViewOtpViewBroadcastReceiver: OtpViewOtpViewBroadcastReceiver? = null


  val getActivityResult: ActivityResultLauncher<Intent> =
      registerForActivityResult(ActivityResultContracts.StartActivityForResult(),
  ActivityResultCallback {
    val message = it.data?.getStringExtra(SmsRetriever.EXTRA_SMS_MESSAGE)
    getOtpFromMessage(message!!)
    })


    private val viewModel: OtpVM by viewModels<OtpVM>()

    override fun onInitialized(): Unit {
      viewModel.navArguments = intent.extras?.getBundle("bundle")
      startSmartUserConsent()
      binding.otpVM = viewModel
    }

    override fun onStop(): Unit {
      super.onStop()
      unregisterReceiver(otpViewOtpViewBroadcastReceiver)
    }

    override fun onStart(): Unit {
      super.onStart()
      registerBroadcastReceiver()
    }

    override fun setUpClicks(): Unit {
      binding.btnContinue.setOnClickListener {
        val destIntent = NewPasswordActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    private fun startSmartUserConsent(): Unit {
      val client = SmsRetriever.getClient(this)
      client.startSmsUserConsent(null)
    }

    private fun registerBroadcastReceiver(): Unit {
      otpViewOtpViewBroadcastReceiver = OtpViewOtpViewBroadcastReceiver()
      otpViewOtpViewBroadcastReceiver?.otpBroadcastReceiverListener =
      object : OtpViewOtpViewBroadcastReceiver.OtpBroadcastListener {
        override fun onSuccess(intent: Intent?) {
          getActivityResult.launch(intent)
        }
        override fun onFailure() {

        }
      }
      val intentFilter = IntentFilter(SmsRetriever.SMS_RETRIEVED_ACTION)
      registerReceiver(otpViewOtpViewBroadcastReceiver, intentFilter)
    }

    private fun getOtpFromMessage(message: String): Unit {
      val otpPattern: Pattern = Pattern.compile("(|^)\\d{4}")
      val matcher: Matcher = otpPattern.matcher(message)
      if (matcher.find()) {
        binding.otpViewOtpView?.setText(matcher.group(0))
      }
    }

    companion object {
      const val TAG: String = "OTP_ACTIVITY"

    }
  }
