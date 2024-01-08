package com.vertexrealestateapp.app.modules.verifyphonenumber.ui

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import androidx.activity.result.ActivityResultCallback
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import com.google.android.gms.auth.api.phone.SmsRetriever
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityVerifyPhoneNumberBinding
import com.vertexrealestateapp.app.modules.selectvirtualapp.ui.SelectVirtualAppActivity
import com.vertexrealestateapp.app.modules.verifyphonenumber.`data`.viewmodel.VerifyPhoneNumberVM
import java.util.regex.Matcher
import java.util.regex.Pattern
import kotlin.String
import kotlin.Unit

class VerifyPhoneNumberActivity :
    BaseActivity<ActivityVerifyPhoneNumberBinding>(R.layout.activity_verify_phone_number) {
  private var otpViewOtpViewBroadcastReceiver: OtpViewOtpViewBroadcastReceiver? = null


  val getActivityResult: ActivityResultLauncher<Intent> =
      registerForActivityResult(ActivityResultContracts.StartActivityForResult(),
  ActivityResultCallback {
    val message = it.data?.getStringExtra(SmsRetriever.EXTRA_SMS_MESSAGE)
    getOtpFromMessage(message!!)
    })


    private val viewModel: VerifyPhoneNumberVM by viewModels<VerifyPhoneNumberVM>()

    override fun onInitialized(): Unit {
      viewModel.navArguments = intent.extras?.getBundle("bundle")
      startSmartUserConsent()
      binding.verifyPhoneNumberVM = viewModel
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
      binding.btnConfrim.setOnClickListener {
        val destIntent = SelectVirtualAppActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.btnArrowLeft.setOnClickListener {
        finish()
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
      val otpPattern: Pattern = Pattern.compile("(|^)\\d{5}")
      val matcher: Matcher = otpPattern.matcher(message)
      if (matcher.find()) {
        binding.otpViewOtpView?.setText(matcher.group(0))
      }
    }

    companion object {
      const val TAG: String = "VERIFY_PHONE_NUMBER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, VerifyPhoneNumberActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
