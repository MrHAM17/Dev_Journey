package com.ecommerce.app.modules.notificationoffer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityNotificationOfferBinding
import com.ecommerce.app.modules.notificationoffer.`data`.viewmodel.NotificationOfferVM
import kotlin.String
import kotlin.Unit

class NotificationOfferActivity :
    BaseActivity<ActivityNotificationOfferBinding>(R.layout.activity_notification_offer) {
  private val viewModel: NotificationOfferVM by viewModels<NotificationOfferVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notificationOfferVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_OFFER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NotificationOfferActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
