package com.streetstyleecommerceapp.app.modules.splashscreen.ui

import android.os.Handler
import android.os.Looper
import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivitySplashScreenBinding
import com.streetstyleecommerceapp.app.modules.home.ui.HomeActivity
import com.streetstyleecommerceapp.app.modules.splashscreen.`data`.viewmodel.SplashScreenVM
import kotlin.String
import kotlin.Unit

class SplashScreenActivity :
    BaseActivity<ActivitySplashScreenBinding>(R.layout.activity_splash_screen) {
  private val viewModel: SplashScreenVM by viewModels<SplashScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashScreenVM = viewModel
    Handler(Looper.getMainLooper()).postDelayed( {
      val destIntent = HomeActivity.getIntent(this, null)
      startActivity(destIntent)
      finish()
      }, 3000)
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "SPLASH_SCREEN_ACTIVITY"

    }
  }
