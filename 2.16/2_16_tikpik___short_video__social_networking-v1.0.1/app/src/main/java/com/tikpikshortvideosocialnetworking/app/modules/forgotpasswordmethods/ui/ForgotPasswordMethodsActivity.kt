package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordmethods.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityForgotPasswordMethodsBinding
import com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordmethods.`data`.viewmodel.ForgotPasswordMethodsVM
import com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordtypeotp.ui.ForgotPasswordTypeOtpActivity
import kotlin.String
import kotlin.Unit

class ForgotPasswordMethodsActivity :
    BaseActivity<ActivityForgotPasswordMethodsBinding>(R.layout.activity_forgot_password_methods) {
  private val viewModel: ForgotPasswordMethodsVM by viewModels<ForgotPasswordMethodsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.forgotPasswordMethodsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = ForgotPasswordTypeOtpActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "FORGOT_PASSWORD_METHODS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ForgotPasswordMethodsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
