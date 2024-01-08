package com.jusplaymoviestreamingapp.app.modules.hometabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityHomeTabContainerBinding
import com.jusplaymoviestreamingapp.app.modules.hometabcontainer.`data`.model.ImageSliderWidgetModel
import com.jusplaymoviestreamingapp.app.modules.hometabcontainer.`data`.viewmodel.HomeTabContainerVM
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class HomeTabContainerActivity :
    BaseActivity<ActivityHomeTabContainerBinding>(R.layout.activity_home_tab_container) {
  private val imageSliderWidgetItems: ArrayList<ImageSliderWidgetModel> = arrayListOf()


  private val viewModel: HomeTabContainerVM by viewModels<HomeTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val widgetAdapter = WidgetAdapter(imageSliderWidgetItems,true)
    binding.imageSliderWidget.adapter = widgetAdapter
    binding.imageSliderWidget.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorPagerIndicator.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorPagerIndicator.updateIndicatorCounts(binding.imageSliderWidget.indicatorCount)
    binding.homeTabContainerVM = viewModel
    val adapter = HomeTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = HomeTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun onPause(): Unit {
      binding.imageSliderWidget.pauseAutoScroll()
      super.onPause()
    }

    override fun onResume(): Unit {
      super.onResume()
      binding.imageSliderWidget.resumeAutoScroll()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "HOME_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, HomeTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
