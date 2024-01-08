package com.ecommerce.app.modules.notification.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityNotificationBinding
import com.ecommerce.app.modules.notification.`data`.viewmodel.NotificationVM
import com.ecommerce.app.modules.notificationactivity.ui.NotificationActivityActivity
import com.ecommerce.app.modules.notificationoffer.ui.NotificationOfferActivity
import kotlin.String
import kotlin.Unit

class NotificationActivity :
    BaseActivity<ActivityNotificationBinding>(R.layout.activity_notification) {
  private val viewModel: NotificationVM by viewModels<NotificationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.linearNotificationOption2.setOnClickListener {
      val destIntent = NotificationActivityActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearNotificationOption.setOnClickListener {
      val destIntent = NotificationOfferActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NotificationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
