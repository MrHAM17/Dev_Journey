package com.tunecastmusicstreamingpodcastapp.app.modules.paymentsummary.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPaymentSummaryBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentsuccess.ui.PaymentSuccessDialog
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentsummary.`data`.viewmodel.PaymentSummaryVM
import kotlin.String
import kotlin.Unit

class PaymentSummaryActivity :
    BaseActivity<ActivityPaymentSummaryBinding>(R.layout.activity_payment_summary) {
  private val viewModel: PaymentSummaryVM by viewModels<PaymentSummaryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.paymentSummaryVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destFragment = PaymentSuccessDialog.getInstance(null)
      destFragment.show(this.supportFragmentManager, PaymentSuccessDialog.TAG)
    }
  }

  companion object {
    const val TAG: String = "PAYMENT_SUMMARY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PaymentSummaryActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
