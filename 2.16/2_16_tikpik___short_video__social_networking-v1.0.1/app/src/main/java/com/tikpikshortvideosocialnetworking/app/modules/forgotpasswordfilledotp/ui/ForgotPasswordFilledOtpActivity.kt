package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordfilledotp.ui

import android.content.Intent
import android.content.IntentFilter
import androidx.activity.result.ActivityResultCallback
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import com.google.android.gms.auth.api.phone.SmsRetriever
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityForgotPasswordFilledOtpBinding
import com.tikpikshortvideosocialnetworking.app.modules.createnewpassword.ui.CreateNewPasswordActivity
import com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordfilledotp.`data`.viewmodel.ForgotPasswordFilledOtpVM
import java.util.regex.Matcher
import java.util.regex.Pattern
import kotlin.String
import kotlin.Unit

class ForgotPasswordFilledOtpActivity :
    BaseActivity<ActivityForgotPasswordFilledOtpBinding>(R.layout.activity_forgot_password_filled_otp)
    {
  private var otpViewOtpViewBroadcastReceiver: OtpViewOtpViewBroadcastReceiver? = null


  val getActivityResult: ActivityResultLauncher<Intent> =
      registerForActivityResult(ActivityResultContracts.StartActivityForResult(),
  ActivityResultCallback {
    val message = it.data?.getStringExtra(SmsRetriever.EXTRA_SMS_MESSAGE)
    getOtpFromMessage(message!!)
    })


    private val viewModel: ForgotPasswordFilledOtpVM by viewModels<ForgotPasswordFilledOtpVM>()

    override fun onInitialized(): Unit {
      viewModel.navArguments = intent.extras?.getBundle("bundle")
      startSmartUserConsent()
      binding.forgotPasswordFilledOtpVM = viewModel
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
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
      binding.btnVerify.setOnClickListener {
        val destIntent = CreateNewPasswordActivity.getIntent(this, null)
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
      const val TAG: String = "FORGOT_PASSWORD_FILLED_OTP_ACTIVITY"

    }
  }
