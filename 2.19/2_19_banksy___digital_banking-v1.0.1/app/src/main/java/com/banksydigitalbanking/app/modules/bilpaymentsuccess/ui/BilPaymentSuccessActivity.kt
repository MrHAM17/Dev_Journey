package com.banksydigitalbanking.app.modules.bilpaymentsuccess.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityBilPaymentSuccessBinding
import com.banksydigitalbanking.app.modules.bilpaymentsuccess.`data`.viewmodel.BilPaymentSuccessVM
import kotlin.String
import kotlin.Unit

class BilPaymentSuccessActivity :
    BaseActivity<ActivityBilPaymentSuccessBinding>(R.layout.activity_bil_payment_success) {
  private val viewModel: BilPaymentSuccessVM by viewModels<BilPaymentSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.bilPaymentSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "BIL_PAYMENT_SUCCESS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, BilPaymentSuccessActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
