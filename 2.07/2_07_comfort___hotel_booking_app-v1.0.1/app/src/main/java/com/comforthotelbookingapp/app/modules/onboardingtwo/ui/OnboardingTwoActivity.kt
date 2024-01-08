package com.comforthotelbookingapp.app.modules.onboardingtwo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityOnboardingTwoBinding
import com.comforthotelbookingapp.app.modules.letsyouin.ui.LetSYouInActivity
import com.comforthotelbookingapp.app.modules.onboardingthree.ui.OnboardingThreeActivity
import com.comforthotelbookingapp.app.modules.onboardingtwo.`data`.viewmodel.OnboardingTwoVM
import kotlin.String
import kotlin.Unit

class OnboardingTwoActivity :
    BaseActivity<ActivityOnboardingTwoBinding>(R.layout.activity_onboarding_two) {
  private val viewModel: OnboardingTwoVM by viewModels<OnboardingTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onboardingTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = LetSYouInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnNext.setOnClickListener {
      val destIntent = OnboardingThreeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBOARDING_TWO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OnboardingTwoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
