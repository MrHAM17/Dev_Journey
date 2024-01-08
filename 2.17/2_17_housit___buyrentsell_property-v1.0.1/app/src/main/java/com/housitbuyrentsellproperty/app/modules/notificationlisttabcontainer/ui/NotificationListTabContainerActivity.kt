package com.housitbuyrentsellproperty.app.modules.notificationlisttabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityNotificationListTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.notificationlisttabcontainer.`data`.viewmodel.NotificationListTabContainerVM
import kotlin.String
import kotlin.Unit

class NotificationListTabContainerActivity :
    BaseActivity<ActivityNotificationListTabContainerBinding>(R.layout.activity_notification_list_tab_container)
    {
  private val viewModel: NotificationListTabContainerVM by
      viewModels<NotificationListTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationListTabContainerVM = viewModel
    val adapter =
    NotificationListTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = NotificationListTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "NOTIFICATION_LIST_TAB_CONTAINER_ACTIVITY"

    }
  }
