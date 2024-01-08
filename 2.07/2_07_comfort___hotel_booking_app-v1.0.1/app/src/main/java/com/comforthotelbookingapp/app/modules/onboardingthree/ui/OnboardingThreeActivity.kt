package com.comforthotelbookingapp.app.modules.onboardingthree.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityOnboardingThreeBinding
import com.comforthotelbookingapp.app.modules.letsyouin.ui.LetSYouInActivity
import com.comforthotelbookingapp.app.modules.onboardingthree.`data`.viewmodel.OnboardingThreeVM
import kotlin.String
import kotlin.Unit

class OnboardingThreeActivity :
    BaseActivity<ActivityOnboardingThreeBinding>(R.layout.activity_onboarding_three) {
  private val viewModel: OnboardingThreeVM by viewModels<OnboardingThreeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onboardingThreeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = LetSYouInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnNext.setOnClickListener {
      val destIntent = LetSYouInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBOARDING_THREE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OnboardingThreeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
