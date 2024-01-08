package com.helthiotelehealth.app.modules.onboardingone.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityOnboardingOneBinding
import com.helthiotelehealth.app.modules.onboardingone.`data`.viewmodel.OnboardingOneVM
import com.helthiotelehealth.app.modules.signup.ui.SignUpActivity
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
      // TODO please, add your navigation code here
    }
    binding.btnSignUp.setOnClickListener {
      val destIntent = SignUpActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.txtSkip.setOnClickListener {
      // TODO please, add your navigation code here
    }
    binding.txtSkip.setOnClickListener {
      // TODO please, add your navigation code here
    }
  }

  companion object {
    const val TAG: String = "ONBOARDING_ONE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OnboardingOneActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
