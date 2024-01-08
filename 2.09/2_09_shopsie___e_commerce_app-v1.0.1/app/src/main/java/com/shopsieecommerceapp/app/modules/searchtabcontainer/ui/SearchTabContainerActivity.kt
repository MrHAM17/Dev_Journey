package com.shopsieecommerceapp.app.modules.searchtabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.google.android.material.tabs.TabLayoutMediator
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivitySearchTabContainerBinding
import com.shopsieecommerceapp.app.modules.searchtabcontainer.`data`.viewmodel.SearchTabContainerVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchTabContainerActivity :
    BaseActivity<ActivitySearchTabContainerBinding>(R.layout.activity_search_tab_container) {
  private val viewModel: SearchTabContainerVM by viewModels<SearchTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.searchTabContainerVM = viewModel
    val adapter = SearchTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = SearchTabContainerActivityPagerAdapter.title[position]
      }.attach()
      setUpSearchViewSearchListener()
    }

    override fun setUpClicks(): Unit {
    }

    private fun setUpSearchViewSearchListener(): Unit {
      binding.searchViewSearch.setOnQueryTextListener(object :
      SearchView.OnQueryTextListener {
        override fun onQueryTextSubmit(p0 : String) : Boolean {
          // Performs search when user hit
          // the search button on the keyboard
          return false
        }
        override fun onQueryTextChange(p0 : String) : Boolean {
          // Start filtering the list as user
          // start entering the characters
          return false
        }
        })
      }

      companion object {
        const val TAG: String = "SEARCH_TAB_CONTAINER_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, SearchTabContainerActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
