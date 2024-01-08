package com.ecommerce.app.modules.filtertabcontainer.ui

import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityFilterTabContainerBinding
import com.ecommerce.app.modules.filtertabcontainer.`data`.viewmodel.FilterTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.String
import kotlin.Unit

class FilterTabContainerActivity :
    BaseActivity<ActivityFilterTabContainerBinding>(R.layout.activity_filter_tab_container) {
  private val viewModel: FilterTabContainerVM by viewModels<FilterTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.filterTabContainerVM = viewModel
    val adapter = FilterTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = FilterTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "FILTER_TAB_CONTAINER_ACTIVITY"

    }
  }
