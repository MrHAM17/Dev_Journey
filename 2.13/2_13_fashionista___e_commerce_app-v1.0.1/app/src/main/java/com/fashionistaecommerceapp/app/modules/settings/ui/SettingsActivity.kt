package com.fashionistaecommerceapp.app.modules.settings.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivitySettingsBinding
import com.fashionistaecommerceapp.app.modules.notification.ui.NotificationActivity
import com.fashionistaecommerceapp.app.modules.orderstatus.ui.OrderStatusActivity
import com.fashionistaecommerceapp.app.modules.settings.`data`.viewmodel.SettingsVM
import com.fashionistaecommerceapp.app.modules.trackingorder.ui.TrackingOrderActivity
import kotlin.String
import kotlin.Unit

class SettingsActivity : BaseActivity<ActivitySettingsBinding>(R.layout.activity_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearFrame3.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
    binding.linearFrame4.setOnClickListener {
      val destIntent = TrackingOrderActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearFrame5.setOnClickListener {
      val destIntent = OrderStatusActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "SETTINGS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SettingsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
