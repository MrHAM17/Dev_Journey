package com.comforthotelbookingapp.app.modules.searchtypetabcontainer.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivitySearchTypeTabContainerBinding
import com.comforthotelbookingapp.app.modules.searchtypetabcontainer.`data`.viewmodel.SearchTypeTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchTypeTabContainerActivity :
    BaseActivity<ActivitySearchTypeTabContainerBinding>(R.layout.activity_search_type_tab_container)
    {
  private val viewModel: SearchTypeTabContainerVM by viewModels<SearchTypeTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.searchTypeTabContainerVM = viewModel
    val adapter = SearchTypeTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = SearchTypeTabContainerActivityPagerAdapter.title[position]
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
        const val TAG: String = "SEARCH_TYPE_TAB_CONTAINER_ACTIVITY"

      }
    }
