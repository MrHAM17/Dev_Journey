package com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfoundtabcontainer.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.google.android.material.tabs.TabLayoutMediator
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySearchNotFoundTabContainerBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfoundtabcontainer.`data`.viewmodel.SearchNotFoundTabContainerVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchNotFoundTabContainerActivity :
    BaseActivity<ActivitySearchNotFoundTabContainerBinding>(R.layout.activity_search_not_found_tab_container)
    {
  private val viewModel: SearchNotFoundTabContainerVM by viewModels<SearchNotFoundTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.searchNotFoundTabContainerVM = viewModel
    val adapter =
    SearchNotFoundTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = SearchNotFoundTabContainerActivityPagerAdapter.title[position]
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
        const val TAG: String = "SEARCH_NOT_FOUND_TAB_CONTAINER_ACTIVITY"

      }
    }
