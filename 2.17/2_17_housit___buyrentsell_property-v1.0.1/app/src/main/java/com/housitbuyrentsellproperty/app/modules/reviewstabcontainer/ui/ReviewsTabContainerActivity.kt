package com.housitbuyrentsellproperty.app.modules.reviewstabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityReviewsTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.reviewstabcontainer.`data`.viewmodel.ReviewsTabContainerVM
import kotlin.String
import kotlin.Unit

class ReviewsTabContainerActivity :
    BaseActivity<ActivityReviewsTabContainerBinding>(R.layout.activity_reviews_tab_container) {
  private val viewModel: ReviewsTabContainerVM by viewModels<ReviewsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.reviewsTabContainerVM = viewModel
    val adapter = ReviewsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ReviewsTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "REVIEWS_TAB_CONTAINER_ACTIVITY"

    }
  }
