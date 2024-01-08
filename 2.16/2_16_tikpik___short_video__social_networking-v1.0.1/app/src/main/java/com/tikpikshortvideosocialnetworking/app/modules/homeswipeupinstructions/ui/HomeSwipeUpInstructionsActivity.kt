package com.tikpikshortvideosocialnetworking.app.modules.homeswipeupinstructions.ui

import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityHomeSwipeUpInstructionsBinding
import com.tikpikshortvideosocialnetworking.app.modules.homeswipeupinstructions.`data`.viewmodel.HomeSwipeUpInstructionsVM
import kotlin.String
import kotlin.Unit

class HomeSwipeUpInstructionsActivity :
    BaseActivity<ActivityHomeSwipeUpInstructionsBinding>(R.layout.activity_home_swipe_up_instructions)
    {
  private val viewModel: HomeSwipeUpInstructionsVM by viewModels<HomeSwipeUpInstructionsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeSwipeUpInstructionsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "HOME_SWIPE_UP_INSTRUCTIONS_ACTIVITY"

  }
}
