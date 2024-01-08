package com.shopsieecommerceapp.app.modules.eventstabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityEventsTabContainerBinding
import com.shopsieecommerceapp.app.modules.eventstabcontainer.`data`.viewmodel.EventsTabContainerVM
import com.shopsieecommerceapp.app.modules.notifications.ui.NotificationsActivity
import kotlin.String
import kotlin.Unit

class EventsTabContainerActivity :
    BaseActivity<ActivityEventsTabContainerBinding>(R.layout.activity_events_tab_container) {
  private val viewModel: EventsTabContainerVM by viewModels<EventsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.eventsTabContainerVM = viewModel
    val adapter = EventsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = EventsTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnIconNotification.setOnClickListener {
        val destIntent = NotificationsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "EVENTS_TAB_CONTAINER_ACTIVITY"

    }
  }
