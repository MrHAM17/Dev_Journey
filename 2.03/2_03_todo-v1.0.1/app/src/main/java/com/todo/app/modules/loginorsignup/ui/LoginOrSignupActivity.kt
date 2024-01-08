package com.todo.app.modules.loginorsignup.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.todo.app.R
import com.todo.app.appcomponents.base.BaseActivity
import com.todo.app.databinding.ActivityLoginOrSignupBinding
import com.todo.app.modules.login.ui.LoginActivity
import com.todo.app.modules.loginorsignup.`data`.viewmodel.LoginOrSignupVM
import com.todo.app.modules.signup.ui.SignupActivity
import kotlin.String
import kotlin.Unit

class LoginOrSignupActivity :
    BaseActivity<ActivityLoginOrSignupBinding>(R.layout.activity_login_or_signup) {
  private val viewModel: LoginOrSignupVM by viewModels<LoginOrSignupVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.loginOrSignupVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnLogin.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnSignUp.setOnClickListener {
      val destIntent = SignupActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      // TODO please, add your navigation code here
      finish()
    }
  }

  companion object {
    const val TAG: String = "LOGIN_OR_SIGNUP_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, LoginOrSignupActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
