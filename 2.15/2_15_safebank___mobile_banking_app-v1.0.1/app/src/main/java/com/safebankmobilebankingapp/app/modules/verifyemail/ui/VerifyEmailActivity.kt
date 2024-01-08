package com.safebankmobilebankingapp.app.modules.verifyemail.ui

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import androidx.activity.result.ActivityResultCallback
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import com.google.android.gms.auth.api.phone.SmsRetriever
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityVerifyEmailBinding
import com.safebankmobilebankingapp.app.modules.minepagecontainer.ui.MinePageContainerActivity
import com.safebankmobilebankingapp.app.modules.verifyemail.`data`.viewmodel.VerifyEmailVM
import java.util.regex.Matcher
import java.util.regex.Pattern
import kotlin.String
import kotlin.Unit

class VerifyEmailActivity : BaseActivity<ActivityVerifyEmailBinding>(R.layout.activity_verify_email)
    {
  private var otpViewOtpViewBroadcastReceiver: OtpViewOtpViewBroadcastReceiver? = null


  val getActivityResult: ActivityResultLauncher<Intent> =
      registerForActivityResult(ActivityResultContracts.StartActivityForResult(),
  ActivityResultCallback {
    val message = it.data?.getStringExtra(SmsRetriever.EXTRA_SMS_MESSAGE)
    getOtpFromMessage(message!!)
    })


    private val viewModel: VerifyEmailVM by viewModels<VerifyEmailVM>()

    override fun onInitialized(): Unit {
      viewModel.navArguments = intent.extras?.getBundle("bundle")
      startSmartUserConsent()
      binding.verifyEmailVM = viewModel
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
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
      binding.btnVerifyCode.setOnClickListener {
        val destIntent = MinePageContainerActivity.getIntent(this, null)
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
      const val TAG: String = "VERIFY_EMAIL_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, VerifyEmailActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
