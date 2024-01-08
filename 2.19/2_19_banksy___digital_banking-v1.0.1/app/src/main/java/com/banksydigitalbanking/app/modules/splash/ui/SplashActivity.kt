package com.banksydigitalbanking.app.modules.splash.ui

import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivitySplashBinding
import com.banksydigitalbanking.app.modules.splash.`data`.viewmodel.SplashVM
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
