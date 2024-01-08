package com.blogapp.app.modules.privacypolicy.ui

import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityPrivacyPolicyBinding
import com.blogapp.app.modules.privacypolicy.`data`.viewmodel.PrivacyPolicyVM
import kotlin.String
import kotlin.Unit

class PrivacyPolicyActivity :
    BaseActivity<ActivityPrivacyPolicyBinding>(R.layout.activity_privacy_policy) {
  private val viewModel: PrivacyPolicyVM by viewModels<PrivacyPolicyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.privacyPolicyVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PRIVACY_POLICY_ACTIVITY"

  }
}
