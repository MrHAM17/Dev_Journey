package com.safebankmobilebankingapp.app.modules.splash.ui

import android.os.Handler
import android.os.Looper
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivitySplashBinding
import com.safebankmobilebankingapp.app.modules.loginpagetabcontainer.ui.LoginPageTabContainerActivity
import com.safebankmobilebankingapp.app.modules.splash.`data`.viewmodel.SplashVM
import kotlin.String
import kotlin.Unit

class SplashActivity : BaseActivity<ActivitySplashBinding>(R.layout.activity_splash) {
  private val viewModel: SplashVM by viewModels<SplashVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashVM = viewModel
    Handler(Looper.getMainLooper()).postDelayed( {
      val destIntent = LoginPageTabContainerActivity.getIntent(this, null)
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
