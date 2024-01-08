package com.comforthotelbookingapp.app.modules.confirmpayment.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityConfirmPaymentBinding
import com.comforthotelbookingapp.app.modules.cardadded.ui.CardAddedActivity
import com.comforthotelbookingapp.app.modules.confirmpayment.`data`.viewmodel.ConfirmPaymentVM
import kotlin.String
import kotlin.Unit

class ConfirmPaymentActivity :
    BaseActivity<ActivityConfirmPaymentBinding>(R.layout.activity_confirm_payment) {
  private val viewModel: ConfirmPaymentVM by viewModels<ConfirmPaymentVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.confirmPaymentVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.txtChange.setOnClickListener {
      val destIntent = CardAddedActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "CONFIRM_PAYMENT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ConfirmPaymentActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
