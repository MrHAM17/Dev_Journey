package com.hiredjobsearch.app.modules.enterotptabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityEnterOtpTabContainerBinding
import com.hiredjobsearch.app.modules.enterotptabcontainer.`data`.viewmodel.EnterOtpTabContainerVM
import kotlin.String
import kotlin.Unit

class EnterOtpTabContainerActivity :
    BaseActivity<ActivityEnterOtpTabContainerBinding>(R.layout.activity_enter_otp_tab_container) {
  private val viewModel: EnterOtpTabContainerVM by viewModels<EnterOtpTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.enterOtpTabContainerVM = viewModel
    val adapter = EnterOtpTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = EnterOtpTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "ENTER_OTP_TAB_CONTAINER_ACTIVITY"

    }
  }
