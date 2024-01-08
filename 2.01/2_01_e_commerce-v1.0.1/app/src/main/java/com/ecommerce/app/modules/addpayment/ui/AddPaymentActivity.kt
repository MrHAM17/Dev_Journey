package com.ecommerce.app.modules.addpayment.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityAddPaymentBinding
import com.ecommerce.app.modules.addpayment.`data`.viewmodel.AddPaymentVM
import com.ecommerce.app.modules.creditcardanddebit.ui.CreditCardAndDebitActivity
import kotlin.String
import kotlin.Unit

class AddPaymentActivity : BaseActivity<ActivityAddPaymentBinding>(R.layout.activity_add_payment) {
  private val viewModel: AddPaymentVM by viewModels<AddPaymentVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addPaymentVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.linearPaymentOption.setOnClickListener {
      val destIntent = CreditCardAndDebitActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ADD_PAYMENT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddPaymentActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
