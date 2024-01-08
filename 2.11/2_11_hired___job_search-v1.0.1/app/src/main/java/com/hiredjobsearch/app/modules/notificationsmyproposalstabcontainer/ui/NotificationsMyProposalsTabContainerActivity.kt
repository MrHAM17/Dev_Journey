package com.hiredjobsearch.app.modules.notificationsmyproposalstabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityNotificationsMyProposalsTabContainerBinding
import com.hiredjobsearch.app.modules.notificationsmyproposalstabcontainer.`data`.viewmodel.NotificationsMyProposalsTabContainerVM
import com.hiredjobsearch.app.modules.settings.ui.SettingsActivity
import kotlin.String
import kotlin.Unit

class NotificationsMyProposalsTabContainerActivity :
    BaseActivity<ActivityNotificationsMyProposalsTabContainerBinding>(R.layout.activity_notifications_my_proposals_tab_container)
    {
  private val viewModel: NotificationsMyProposalsTabContainerVM by
      viewModels<NotificationsMyProposalsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationsMyProposalsTabContainerVM = viewModel
    val adapter =
    NotificationsMyProposalsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = NotificationsMyProposalsTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.imageImage1.setOnClickListener {
        val destIntent = SettingsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "NOTIFICATIONS_MY_PROPOSALS_TAB_CONTAINER_ACTIVITY"

    }
  }
