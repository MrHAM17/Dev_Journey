package com.blogapp.app.modules.interests.ui

import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityInterestsBinding
import com.blogapp.app.modules.interests.`data`.viewmodel.InterestsVM
import kotlin.String
import kotlin.Unit

class InterestsActivity : BaseActivity<ActivityInterestsBinding>(R.layout.activity_interests) {
  private val viewModel: InterestsVM by viewModels<InterestsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.interestsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "INTERESTS_ACTIVITY"

  }
}
