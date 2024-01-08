package com.fashionistaecommerceapp.app.modules.hometabcontainer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseFragment
import com.fashionistaecommerceapp.app.databinding.FragmentHomeTabContainerBinding
import com.fashionistaecommerceapp.app.modules.hometabcontainer.`data`.viewmodel.HomeTabContainerVM
import com.fashionistaecommerceapp.app.modules.notification.ui.NotificationActivity
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.String
import kotlin.Unit

class HomeTabContainerFragment :
    BaseFragment<FragmentHomeTabContainerBinding>(R.layout.fragment_home_tab_container) {
  private val viewModel: HomeTabContainerVM by viewModels<HomeTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.homeTabContainerVM = viewModel
    val adapter = HomeTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = HomeTabContainerFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.imageNotificationsActive.setOnClickListener {
        val destIntent = NotificationActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
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
