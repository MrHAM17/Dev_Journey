package com.comforthotelbookingapp.app.modules.reviewtabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityReviewTabContainerBinding
import com.comforthotelbookingapp.app.modules.reviewtabcontainer.`data`.viewmodel.ReviewTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.String
import kotlin.Unit

class ReviewTabContainerActivity :
    BaseActivity<ActivityReviewTabContainerBinding>(R.layout.activity_review_tab_container) {
  private val viewModel: ReviewTabContainerVM by viewModels<ReviewTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.reviewTabContainerVM = viewModel
    val adapter = ReviewTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ReviewTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "REVIEW_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, ReviewTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
