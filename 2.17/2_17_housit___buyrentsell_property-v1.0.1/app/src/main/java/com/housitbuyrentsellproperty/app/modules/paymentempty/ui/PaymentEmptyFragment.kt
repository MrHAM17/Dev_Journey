package com.housitbuyrentsellproperty.app.modules.paymentempty.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentPaymentEmptyBinding
import com.housitbuyrentsellproperty.app.modules.paymentempty.`data`.viewmodel.PaymentEmptyVM
import kotlin.String
import kotlin.Unit

class PaymentEmptyFragment :
    BaseFragment<FragmentPaymentEmptyBinding>(R.layout.fragment_payment_empty) {
  private val viewModel: PaymentEmptyVM by viewModels<PaymentEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.paymentEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      // TODO please, add your navigation code here
    }
  }

  companion object {
    const val TAG: String = "PAYMENT_EMPTY_FRAGMENT"


    fun getInstance(bundle: Bundle?): PaymentEmptyFragment {
      val fragment = PaymentEmptyFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
