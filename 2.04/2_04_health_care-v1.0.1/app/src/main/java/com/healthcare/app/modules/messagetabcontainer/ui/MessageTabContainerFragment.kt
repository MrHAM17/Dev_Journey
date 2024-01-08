package com.healthcare.app.modules.messagetabcontainer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseFragment
import com.healthcare.app.databinding.FragmentMessageTabContainerBinding
import com.healthcare.app.modules.messagetabcontainer.`data`.viewmodel.MessageTabContainerVM
import kotlin.String
import kotlin.Unit

class MessageTabContainerFragment :
    BaseFragment<FragmentMessageTabContainerBinding>(R.layout.fragment_message_tab_container) {
  private val viewModel: MessageTabContainerVM by viewModels<MessageTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.messageTabContainerVM = viewModel
    val adapter = MessageTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = MessageTabContainerFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "MESSAGE_TAB_CONTAINER_FRAGMENT"


      fun getInstance(bundle: Bundle?): MessageTabContainerFragment {
        val fragment = MessageTabContainerFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
