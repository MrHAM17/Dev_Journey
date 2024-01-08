package com.jusplaymoviestreamingapp.app.modules.resetpasswordsuccess.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityResetPasswordSuccessBinding
import com.jusplaymoviestreamingapp.app.modules.login.ui.LoginActivity
import com.jusplaymoviestreamingapp.app.modules.resetpasswordsuccess.`data`.viewmodel.ResetPasswordSuccessVM
import kotlin.String
import kotlin.Unit

class ResetPasswordSuccessActivity :
    BaseActivity<ActivityResetPasswordSuccessBinding>(R.layout.activity_reset_password_success) {
  private val viewModel: ResetPasswordSuccessVM by viewModels<ResetPasswordSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.resetPasswordSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnLogin.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "RESET_PASSWORD_SUCCESS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ResetPasswordSuccessActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
