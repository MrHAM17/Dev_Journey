package com.shopsieecommerceapp.app.modules.profileprofileinfotabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityProfileProfileInfoTabContainerBinding
import com.shopsieecommerceapp.app.modules.profileprofileinfotabcontainer.`data`.viewmodel.ProfileProfileInfoTabContainerVM
import kotlin.String
import kotlin.Unit

class ProfileProfileInfoTabContainerActivity :
    BaseActivity<ActivityProfileProfileInfoTabContainerBinding>(R.layout.activity_profile_profile_info_tab_container)
    {
  private val viewModel: ProfileProfileInfoTabContainerVM by
      viewModels<ProfileProfileInfoTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.profileProfileInfoTabContainerVM = viewModel
    val adapter =
    ProfileProfileInfoTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ProfileProfileInfoTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "PROFILE_PROFILE_INFO_TAB_CONTAINER_ACTIVITY"

    }
  }
