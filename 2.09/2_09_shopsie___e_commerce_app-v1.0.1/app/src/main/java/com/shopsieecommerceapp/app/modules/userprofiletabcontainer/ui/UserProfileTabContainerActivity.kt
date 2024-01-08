package com.shopsieecommerceapp.app.modules.userprofiletabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityUserProfileTabContainerBinding
import com.shopsieecommerceapp.app.modules.userprofiletabcontainer.`data`.viewmodel.UserProfileTabContainerVM
import kotlin.String
import kotlin.Unit

class UserProfileTabContainerActivity :
    BaseActivity<ActivityUserProfileTabContainerBinding>(R.layout.activity_user_profile_tab_container)
    {
  private val viewModel: UserProfileTabContainerVM by viewModels<UserProfileTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.userProfileTabContainerVM = viewModel
    val adapter = UserProfileTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = UserProfileTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "USER_PROFILE_TAB_CONTAINER_ACTIVITY"

    }
  }
