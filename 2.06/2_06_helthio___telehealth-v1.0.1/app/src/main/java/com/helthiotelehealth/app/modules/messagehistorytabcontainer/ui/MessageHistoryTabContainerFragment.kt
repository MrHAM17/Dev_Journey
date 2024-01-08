package com.helthiotelehealth.app.modules.messagehistorytabcontainer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseFragment
import com.helthiotelehealth.app.databinding.FragmentMessageHistoryTabContainerBinding
import com.helthiotelehealth.app.modules.messagehistorytabcontainer.`data`.viewmodel.MessageHistoryTabContainerVM
import kotlin.String
import kotlin.Unit

class MessageHistoryTabContainerFragment :
    BaseFragment<FragmentMessageHistoryTabContainerBinding>(R.layout.fragment_message_history_tab_container)
    {
  private val viewModel: MessageHistoryTabContainerVM by viewModels<MessageHistoryTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.messageHistoryTabContainerVM = viewModel
    val adapter = MessageHistoryTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = MessageHistoryTabContainerFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "MESSAGE_HISTORY_TAB_CONTAINER_FRAGMENT"


      fun getInstance(bundle: Bundle?): MessageHistoryTabContainerFragment {
        val fragment = MessageHistoryTabContainerFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
