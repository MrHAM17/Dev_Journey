package com.socialsocialnetworking.app.modules.forgotpassword.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityForgotPasswordBinding
import com.socialsocialnetworking.app.modules.forgotpassword.`data`.viewmodel.ForgotPasswordVM
import com.socialsocialnetworking.app.modules.notification.ui.NotificationActivity
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
    binding.btnLogIn.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(this, null)
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
