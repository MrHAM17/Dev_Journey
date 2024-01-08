package com.ecommerce.app.modules.notificationfeed.ui

import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityNotificationFeedBinding
import com.ecommerce.app.modules.notificationfeed.`data`.viewmodel.NotificationFeedVM
import kotlin.String
import kotlin.Unit

class NotificationFeedActivity :
    BaseActivity<ActivityNotificationFeedBinding>(R.layout.activity_notification_feed) {
  private val viewModel: NotificationFeedVM by viewModels<NotificationFeedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationFeedVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_FEED_ACTIVITY"

  }
}
