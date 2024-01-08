package com.tunecastmusicstreamingpodcastapp.app.modules.paymentsuccess.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseDialogFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.DialogPaymentSuccessBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentsuccess.`data`.viewmodel.PaymentSuccessVM
import kotlin.String
import kotlin.Unit

class PaymentSuccessDialog :
    BaseDialogFragment<DialogPaymentSuccessBinding>(R.layout.dialog_payment_success) {
  private val viewModel: PaymentSuccessVM by viewModels<PaymentSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.paymentSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PAYMENT_SUCCESS_DIALOG"


    fun getInstance(bundle: Bundle?): PaymentSuccessDialog {
      val fragment = PaymentSuccessDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
