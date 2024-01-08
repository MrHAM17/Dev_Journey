package com.healthcare.app.modules.splashscreen.ui

import android.os.Handler
import android.os.Looper
import androidx.activity.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseActivity
import com.healthcare.app.databinding.ActivitySplashScreenBinding
import com.healthcare.app.modules.login.ui.LoginActivity
import com.healthcare.app.modules.signup.ui.SignupActivity
import com.healthcare.app.modules.splashscreen.`data`.viewmodel.SplashScreenVM
import kotlin.String
import kotlin.Unit

class SplashScreenActivity :
    BaseActivity<ActivitySplashScreenBinding>(R.layout.activity_splash_screen) {
  private val viewModel: SplashScreenVM by viewModels<SplashScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashScreenVM = viewModel
    Handler(Looper.getMainLooper()).postDelayed( {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
      finish()
      }, 3000)
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
    }

    companion object {
      const val TAG: String = "SPLASH_SCREEN_ACTIVITY"

    }
  }
