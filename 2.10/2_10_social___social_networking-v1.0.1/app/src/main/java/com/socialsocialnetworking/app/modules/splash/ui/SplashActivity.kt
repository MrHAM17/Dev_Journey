package com.socialsocialnetworking.app.modules.splash.ui

import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivitySplashBinding
import com.socialsocialnetworking.app.modules.splash.`data`.viewmodel.SplashVM
import kotlin.String
import kotlin.Unit

class SplashActivity : BaseActivity<ActivitySplashBinding>(R.layout.activity_splash) {
  private val viewModel: SplashVM by viewModels<SplashVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SPLASH_ACTIVITY"

  }
}
