package com.vertexrealestateapp.app.modules.filtertabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityFilterTabContainerBinding
import com.vertexrealestateapp.app.modules.filtertabcontainer.`data`.viewmodel.FilterTabContainerVM
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


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, FilterTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
