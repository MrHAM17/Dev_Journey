package com.housitbuyrentsellproperty.app.modules.paymentmastercard.ui

import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.appcomponents.views.DatePickerFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentPaymentMastercardBinding
import com.housitbuyrentsellproperty.app.modules.paymentmastercard.`data`.viewmodel.PaymentMastercardVM
import com.housitbuyrentsellproperty.app.modules.userempty.ui.UserEmptyActivity
import java.util.Date
import kotlin.String
import kotlin.Unit

class PaymentMastercardFragment :
    BaseFragment<FragmentPaymentMastercardBinding>(R.layout.fragment_payment_mastercard) {
  private val viewModel: PaymentMastercardVM by viewModels<PaymentMastercardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.paymentMastercardVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = UserEmptyActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearFormDateFill.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(requireActivity().supportFragmentManager, DatePickerFragment.TAG) {
          selectedDate ->
        onDateSelectedLinearFormDateFill(selectedDate)
      }
    }
  }

  private fun onDateSelectedLinearFormDateFill(selectedDate: Date) {
  }

  companion object {
    const val TAG: String = "PAYMENT_MASTERCARD_FRAGMENT"

  }
}
