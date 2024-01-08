package com.ecommerce.app.modules.successscreen.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivitySuccessScreenBinding
import com.ecommerce.app.modules.order.ui.OrderActivity
import com.ecommerce.app.modules.successscreen.`data`.viewmodel.SuccessScreenVM
import kotlin.String
import kotlin.Unit

class SuccessScreenActivity :
    BaseActivity<ActivitySuccessScreenBinding>(R.layout.activity_success_screen) {
  private val viewModel: SuccessScreenVM by viewModels<SuccessScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.successScreenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnBackToOrder.setOnClickListener {
      val destIntent = OrderActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "SUCCESS_SCREEN_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SuccessScreenActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
