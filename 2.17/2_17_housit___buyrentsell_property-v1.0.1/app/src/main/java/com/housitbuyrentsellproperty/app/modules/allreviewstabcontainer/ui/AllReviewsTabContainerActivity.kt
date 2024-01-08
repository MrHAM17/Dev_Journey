package com.housitbuyrentsellproperty.app.modules.allreviewstabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityAllReviewsTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.allreviewstabcontainer.`data`.viewmodel.AllReviewsTabContainerVM
import kotlin.String
import kotlin.Unit

class AllReviewsTabContainerActivity :
    BaseActivity<ActivityAllReviewsTabContainerBinding>(R.layout.activity_all_reviews_tab_container)
    {
  private val viewModel: AllReviewsTabContainerVM by viewModels<AllReviewsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.allReviewsTabContainerVM = viewModel
    val adapter = AllReviewsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = AllReviewsTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "ALL_REVIEWS_TAB_CONTAINER_ACTIVITY"

    }
  }
