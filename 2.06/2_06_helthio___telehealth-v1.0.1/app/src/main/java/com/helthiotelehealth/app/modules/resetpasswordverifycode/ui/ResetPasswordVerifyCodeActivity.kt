package com.helthiotelehealth.app.modules.resetpasswordverifycode.ui

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import androidx.activity.result.ActivityResultCallback
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import com.google.android.gms.auth.api.phone.SmsRetriever
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityResetPasswordVerifyCodeBinding
import com.helthiotelehealth.app.modules.createnewpassword.ui.CreateNewPasswordActivity
import com.helthiotelehealth.app.modules.resetpasswordverifycode.`data`.viewmodel.ResetPasswordVerifyCodeVM
import java.util.regex.Matcher
import java.util.regex.Pattern
import kotlin.String
import kotlin.Unit

class ResetPasswordVerifyCodeActivity :
    BaseActivity<ActivityResetPasswordVerifyCodeBinding>(R.layout.activity_reset_password_verify_code)
    {
  private var otpViewOtpViewBroadcastReceiver: OtpViewOtpViewBroadcastReceiver? = null


  val getActivityResult: ActivityResultLauncher<Intent> =
      registerForActivityResult(ActivityResultContracts.StartActivityForResult(),
  ActivityResultCallback {
    val message = it.data?.getStringExtra(SmsRetriever.EXTRA_SMS_MESSAGE)
    getOtpFromMessage(message!!)
    })


    private val viewModel: ResetPasswordVerifyCodeVM by viewModels<ResetPasswordVerifyCodeVM>()

    override fun onInitialized(): Unit {
      viewModel.navArguments = intent.extras?.getBundle("bundle")
      startSmartUserConsent()
      binding.resetPasswordVerifyCodeVM = viewModel
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
      const val TAG: String = "RESET_PASSWORD_VERIFY_CODE_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, ResetPasswordVerifyCodeActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
