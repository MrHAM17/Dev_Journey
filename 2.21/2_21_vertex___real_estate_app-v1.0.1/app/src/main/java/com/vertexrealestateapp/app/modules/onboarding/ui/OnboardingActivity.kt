package com.vertexrealestateapp.app.modules.onboarding.ui

import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityOnboardingBinding
import com.vertexrealestateapp.app.modules.onboarding.`data`.viewmodel.OnboardingVM
import com.vertexrealestateapp.app.modules.signin.ui.SignInActivity
import kotlin.String
import kotlin.Unit

class OnboardingActivity : BaseActivity<ActivityOnboardingBinding>(R.layout.activity_onboarding) {
  private val viewModel: OnboardingVM by viewModels<OnboardingVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onboardingVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnGetStarted.setOnClickListener {
      val destIntent = SignInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBOARDING_ACTIVITY"

  }
}
