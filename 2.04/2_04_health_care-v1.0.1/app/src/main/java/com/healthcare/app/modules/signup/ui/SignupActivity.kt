package com.healthcare.app.modules.signup.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseActivity
import com.healthcare.app.databinding.ActivitySignupBinding
import com.healthcare.app.modules.login.ui.LoginActivity
import com.healthcare.app.modules.signup.`data`.viewmodel.SignupVM
import kotlin.String
import kotlin.Unit

class SignupActivity : BaseActivity<ActivitySignupBinding>(R.layout.activity_signup) {
  private val viewModel: SignupVM by viewModels<SignupVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signupVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtConfirmation.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "SIGNUP_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SignupActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
