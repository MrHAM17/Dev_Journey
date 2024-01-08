package com.housitbuyrentsellproperty.app.modules.paymentpaypal.ui

import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentPaymentPaypalBinding
import com.housitbuyrentsellproperty.app.modules.paymentpaypal.`data`.viewmodel.PaymentPaypalVM
import kotlin.String
import kotlin.Unit

class PaymentPaypalFragment :
    BaseFragment<FragmentPaymentPaypalBinding>(R.layout.fragment_payment_paypal) {
  private val viewModel: PaymentPaypalVM by viewModels<PaymentPaypalVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.paymentPaypalVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PAYMENT_PAYPAL_FRAGMENT"

  }
}
