package com.banksydigitalbanking.app.modules.paymentsuccess.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityPaymentSuccessBinding
import com.banksydigitalbanking.app.modules.paymentsuccess.`data`.viewmodel.PaymentSuccessVM
import kotlin.String
import kotlin.Unit

class PaymentSuccessActivity :
    BaseActivity<ActivityPaymentSuccessBinding>(R.layout.activity_payment_success) {
  private val viewModel: PaymentSuccessVM by viewModels<PaymentSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.paymentSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PAYMENT_SUCCESS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PaymentSuccessActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
