package com.jusplaymoviestreamingapp.app.modules.forgotpassword.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityForgotPasswordBinding
import com.jusplaymoviestreamingapp.app.modules.forgotpassword.`data`.viewmodel.ForgotPasswordVM
import com.jusplaymoviestreamingapp.app.modules.otpverification.ui.OtpVerificationActivity
import kotlin.String
import kotlin.Unit

class ForgotPasswordActivity :
    BaseActivity<ActivityForgotPasswordBinding>(R.layout.activity_forgot_password) {
  private val viewModel: ForgotPasswordVM by viewModels<ForgotPasswordVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.forgotPasswordVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSubmit.setOnClickListener {
      val destIntent = OtpVerificationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "FORGOT_PASSWORD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ForgotPasswordActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
