package com.comforthotelbookingapp.app.modules.homescreentabcontainer.ui

import android.os.Bundle
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentHomeScreenTabContainerBinding
import com.comforthotelbookingapp.app.modules.homescreentabcontainer.`data`.viewmodel.HomeScreenTabContainerVM
import com.comforthotelbookingapp.app.modules.notifications.ui.NotificationsActivity
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class HomeScreenTabContainerFragment :
    BaseFragment<FragmentHomeScreenTabContainerBinding>(R.layout.fragment_home_screen_tab_container)
    {
  private val viewModel: HomeScreenTabContainerVM by viewModels<HomeScreenTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.homeScreenTabContainerVM = viewModel
    val adapter = HomeScreenTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = HomeScreenTabContainerFragmentPagerAdapter.title[position]
      }.attach()
      setUpSearchViewSearchListener()
    }

    override fun setUpClicks(): Unit {
      binding.imageIcons.setOnClickListener {
        val destIntent = NotificationsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
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
        const val TAG: String = "HOME_SCREEN_TAB_CONTAINER_FRAGMENT"


        fun getInstance(bundle: Bundle?): HomeScreenTabContainerFragment {
          val fragment = HomeScreenTabContainerFragment()
          fragment.arguments = bundle
          return fragment
        }
      }
    }
