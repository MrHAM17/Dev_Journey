package com.comforthotelbookingapp.app.modules.searchpagetabcontainer.ui

import android.os.Bundle
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentSearchPageTabContainerBinding
import com.comforthotelbookingapp.app.modules.searchpagetabcontainer.`data`.viewmodel.SearchPageTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchPageTabContainerFragment :
    BaseFragment<FragmentSearchPageTabContainerBinding>(R.layout.fragment_search_page_tab_container)
    {
  private val viewModel: SearchPageTabContainerVM by viewModels<SearchPageTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.searchPageTabContainerVM = viewModel
    val adapter = SearchPageTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = SearchPageTabContainerFragmentPagerAdapter.title[position]
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
        const val TAG: String = "SEARCH_PAGE_TAB_CONTAINER_FRAGMENT"


        fun getInstance(bundle: Bundle?): SearchPageTabContainerFragment {
          val fragment = SearchPageTabContainerFragment()
          fragment.arguments = bundle
          return fragment
        }
      }
    }
