package com.housitbuyrentsellproperty.app.modules.summary.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivitySummaryBinding
import com.housitbuyrentsellproperty.app.modules.summary.`data`.viewmodel.SummaryVM
import com.housitbuyrentsellproperty.app.modules.summarychangepayment.ui.SummaryChangePaymentBottomsheet
import kotlin.String
import kotlin.Unit

class SummaryActivity : BaseActivity<ActivitySummaryBinding>(R.layout.activity_summary) {
  private val viewModel: SummaryVM by viewModels<SummaryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.summaryVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnPayRent.setOnClickListener {
      val destFragment = SummaryChangePaymentBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, SummaryChangePaymentBottomsheet.TAG)
    }
  }

  companion object {
    const val TAG: String = "SUMMARY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SummaryActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
