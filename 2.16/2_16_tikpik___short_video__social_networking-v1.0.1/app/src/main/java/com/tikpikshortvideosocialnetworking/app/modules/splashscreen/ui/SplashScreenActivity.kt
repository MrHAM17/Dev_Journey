package com.tikpikshortvideosocialnetworking.app.modules.splashscreen.ui

import android.os.Handler
import android.os.Looper
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySplashScreenBinding
import com.tikpikshortvideosocialnetworking.app.modules.splashscreen.`data`.viewmodel.SplashScreenVM
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughone.ui.WalkthroughOneActivity
import kotlin.String
import kotlin.Unit

class SplashScreenActivity :
    BaseActivity<ActivitySplashScreenBinding>(R.layout.activity_splash_screen) {
  private val viewModel: SplashScreenVM by viewModels<SplashScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashScreenVM = viewModel
    Handler(Looper.getMainLooper()).postDelayed( {
      val destIntent = WalkthroughOneActivity.getIntent(this, null)
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
