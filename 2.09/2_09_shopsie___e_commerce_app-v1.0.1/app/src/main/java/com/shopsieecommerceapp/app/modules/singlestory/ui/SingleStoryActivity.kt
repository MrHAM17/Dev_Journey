package com.shopsieecommerceapp.app.modules.singlestory.ui

import androidx.activity.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivitySingleStoryBinding
import com.shopsieecommerceapp.app.modules.singlestory.`data`.viewmodel.SingleStoryVM
import kotlin.String
import kotlin.Unit

class SingleStoryActivity : BaseActivity<ActivitySingleStoryBinding>(R.layout.activity_single_story)
    {
  private val viewModel: SingleStoryVM by viewModels<SingleStoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.singleStoryVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SINGLE_STORY_ACTIVITY"

  }
}
