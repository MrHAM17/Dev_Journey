package com.shopsieecommerceapp.app.modules.messagestabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityMessagesTabContainerBinding
import com.shopsieecommerceapp.app.modules.messagestabcontainer.`data`.viewmodel.MessagesTabContainerVM
import kotlin.String
import kotlin.Unit

class MessagesTabContainerActivity :
    BaseActivity<ActivityMessagesTabContainerBinding>(R.layout.activity_messages_tab_container) {
  private val viewModel: MessagesTabContainerVM by viewModels<MessagesTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.messagesTabContainerVM = viewModel
    val adapter = MessagesTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = MessagesTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "MESSAGES_TAB_CONTAINER_ACTIVITY"

    }
  }
