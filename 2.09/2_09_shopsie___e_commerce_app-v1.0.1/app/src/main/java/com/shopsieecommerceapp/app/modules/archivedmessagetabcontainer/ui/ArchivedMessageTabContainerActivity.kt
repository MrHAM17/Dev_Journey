package com.shopsieecommerceapp.app.modules.archivedmessagetabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityArchivedMessageTabContainerBinding
import com.shopsieecommerceapp.app.modules.archivedmessagetabcontainer.`data`.viewmodel.ArchivedMessageTabContainerVM
import kotlin.String
import kotlin.Unit

class ArchivedMessageTabContainerActivity :
    BaseActivity<ActivityArchivedMessageTabContainerBinding>(R.layout.activity_archived_message_tab_container)
    {
  private val viewModel: ArchivedMessageTabContainerVM by
      viewModels<ArchivedMessageTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.archivedMessageTabContainerVM = viewModel
    val adapter =
    ArchivedMessageTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ArchivedMessageTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "ARCHIVED_MESSAGE_TAB_CONTAINER_ACTIVITY"

    }
  }
