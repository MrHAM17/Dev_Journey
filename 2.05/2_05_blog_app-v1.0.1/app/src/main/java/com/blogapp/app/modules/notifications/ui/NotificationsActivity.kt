package com.blogapp.app.modules.notifications.ui

import android.view.View
import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityNotificationsBinding
import com.blogapp.app.modules.notifications.`data`.model.NotificationsRowModel
import com.blogapp.app.modules.notifications.`data`.viewmodel.NotificationsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NotificationsActivity :
    BaseActivity<ActivityNotificationsBinding>(R.layout.activity_notifications) {
  private val viewModel: NotificationsVM by viewModels<NotificationsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val notificationsAdapter =
    NotificationsAdapter(viewModel.notificationsList.value?:mutableListOf())
    binding.recyclerNotifications.adapter = notificationsAdapter
    notificationsAdapter.setOnItemClickListener(
    object : NotificationsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : NotificationsRowModel) {
        onClickRecyclerNotifications(view, position, item)
      }
    }
    )
    viewModel.notificationsList.observe(this) {
      notificationsAdapter.updateData(it)
    }
    binding.notificationsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerNotifications(
    view: View,
    position: Int,
    item: NotificationsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATIONS_ACTIVITY"

  }
}
