package com.ecommerce.app.modules.paymentmethod.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityPaymentMethodBinding
import com.ecommerce.app.modules.choosecreditordebitcard.ui.ChooseCreditOrDebitCardActivity
import com.ecommerce.app.modules.paymentmethod.`data`.viewmodel.PaymentMethodVM
import kotlin.String
import kotlin.Unit

class PaymentMethodActivity :
    BaseActivity<ActivityPaymentMethodBinding>(R.layout.activity_payment_method) {
  private val viewModel: PaymentMethodVM by viewModels<PaymentMethodVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.paymentMethodVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.linearPaymentOption.setOnClickListener {
      val destIntent = ChooseCreditOrDebitCardActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "PAYMENT_METHOD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PaymentMethodActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
