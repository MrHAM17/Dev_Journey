package com.ecommerce.app.modules.notificationactivity.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityNotificationActivityBinding
import com.ecommerce.app.modules.notificationactivity.`data`.viewmodel.NotificationVMVM
import kotlin.String
import kotlin.Unit

class NotificationActivityActivity :
    BaseActivity<ActivityNotificationActivityBinding>(R.layout.activity_notification_activity) {
  private val viewModel: NotificationVMVM by viewModels<NotificationVMVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationVMVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.imageTransactionIcon.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_ACTIVITY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NotificationActivityActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
