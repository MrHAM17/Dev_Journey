package com.vertexrealestateapp.app.modules.notificationemptystates.ui

import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityNotificationEmptyStatesBinding
import com.vertexrealestateapp.app.modules.home.ui.HomeActivity
import com.vertexrealestateapp.app.modules.notificationemptystates.`data`.viewmodel.NotificationEmptyStatesVM
import kotlin.String
import kotlin.Unit

class NotificationEmptyStatesActivity :
    BaseActivity<ActivityNotificationEmptyStatesBinding>(R.layout.activity_notification_empty_states)
    {
  private val viewModel: NotificationEmptyStatesVM by viewModels<NotificationEmptyStatesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationEmptyStatesVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNotificationsSettings.setOnClickListener {
      val destIntent = HomeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_EMPTY_STATES_ACTIVITY"

  }
}
