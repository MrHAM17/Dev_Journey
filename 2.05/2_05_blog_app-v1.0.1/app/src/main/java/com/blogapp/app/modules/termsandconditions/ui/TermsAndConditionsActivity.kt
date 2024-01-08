package com.blogapp.app.modules.termsandconditions.ui

import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityTermsAndConditionsBinding
import com.blogapp.app.modules.termsandconditions.`data`.viewmodel.TermsAndConditionsVM
import kotlin.String
import kotlin.Unit

class TermsAndConditionsActivity :
    BaseActivity<ActivityTermsAndConditionsBinding>(R.layout.activity_terms_and_conditions) {
  private val viewModel: TermsAndConditionsVM by viewModels<TermsAndConditionsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.termsAndConditionsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "TERMS_AND_CONDITIONS_ACTIVITY"

  }
}
