package com.banksydigitalbanking.app.modules.onboarding.ui

import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityOnboardingBinding
import com.banksydigitalbanking.app.modules.login.ui.LogInActivity
import com.banksydigitalbanking.app.modules.onboarding.`data`.viewmodel.OnboardingVM
import kotlin.String
import kotlin.Unit

class OnboardingActivity : BaseActivity<ActivityOnboardingBinding>(R.layout.activity_onboarding) {
  private val viewModel: OnboardingVM by viewModels<OnboardingVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onboardingVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnStartNow.setOnClickListener {
      val destIntent = LogInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBOARDING_ACTIVITY"

  }
}
