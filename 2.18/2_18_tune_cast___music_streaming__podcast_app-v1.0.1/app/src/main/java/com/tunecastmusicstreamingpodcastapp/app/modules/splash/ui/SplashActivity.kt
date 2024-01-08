package com.tunecastmusicstreamingpodcastapp.app.modules.splash.ui

import android.os.Handler
import android.os.Looper
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySplashBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.splash.`data`.viewmodel.SplashVM
import com.tunecastmusicstreamingpodcastapp.app.modules.walkthrough.ui.WalkthroughActivity
import kotlin.String
import kotlin.Unit

class SplashActivity : BaseActivity<ActivitySplashBinding>(R.layout.activity_splash) {
  private val viewModel: SplashVM by viewModels<SplashVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashVM = viewModel
    Handler(Looper.getMainLooper()).postDelayed( {
      val destIntent = WalkthroughActivity.getIntent(this, null)
      startActivity(destIntent)
      finish()
      }, 3000)
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "SPLASH_ACTIVITY"

    }
  }
