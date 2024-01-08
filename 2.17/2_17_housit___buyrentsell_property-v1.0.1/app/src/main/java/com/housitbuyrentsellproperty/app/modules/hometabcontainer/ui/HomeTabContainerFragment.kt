package com.housitbuyrentsellproperty.app.modules.hometabcontainer.ui

import android.os.Bundle
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentHomeTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.hometabcontainer.`data`.model.SpinnerButtonLocationModel
import com.housitbuyrentsellproperty.app.modules.hometabcontainer.`data`.viewmodel.HomeTabContainerVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class HomeTabContainerFragment :
    BaseFragment<FragmentHomeTabContainerBinding>(R.layout.fragment_home_tab_container) {
  private val viewModel: HomeTabContainerVM by viewModels<HomeTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    viewModel.spinnerButtonLocationList.value = mutableListOf(
    SpinnerButtonLocationModel("Item1"),
    SpinnerButtonLocationModel("Item2"),
    SpinnerButtonLocationModel("Item3"),
    SpinnerButtonLocationModel("Item4"),
    SpinnerButtonLocationModel("Item5")
    )
    val spinnerButtonLocationAdapter =
    SpinnerButtonLocationAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerButtonLocationList.value?:
    mutableListOf())
    binding.spinnerButtonLocation.adapter = spinnerButtonLocationAdapter
    binding.homeTabContainerVM = viewModel
    val adapter = HomeTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = HomeTabContainerFragmentPagerAdapter.title[position]
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
        const val TAG: String = "HOME_TAB_CONTAINER_FRAGMENT"


        fun getInstance(bundle: Bundle?): HomeTabContainerFragment {
          val fragment = HomeTabContainerFragment()
          fragment.arguments = bundle
          return fragment
        }
      }
    }
