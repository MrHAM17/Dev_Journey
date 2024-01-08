package com.comforthotelbookingapp.app.modules.onboardingone.ui

import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityOnboardingOneBinding
import com.comforthotelbookingapp.app.modules.letsyouin.ui.LetSYouInActivity
import com.comforthotelbookingapp.app.modules.onboardingone.`data`.viewmodel.OnboardingOneVM
import com.comforthotelbookingapp.app.modules.onboardingtwo.ui.OnboardingTwoActivity
import kotlin.String
import kotlin.Unit

class OnboardingOneActivity :
    BaseActivity<ActivityOnboardingOneBinding>(R.layout.activity_onboarding_one) {
  private val viewModel: OnboardingOneVM by viewModels<OnboardingOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onboardingOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = OnboardingTwoActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnSkip.setOnClickListener {
      val destIntent = LetSYouInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBOARDING_ONE_ACTIVITY"

  }
}
