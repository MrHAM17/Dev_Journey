package com.banksydigitalbanking.app.modules.mobileprepaidtwo.ui

import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityMobilePrepaidTwoBinding
import com.banksydigitalbanking.app.modules.mobileprepaidtwo.`data`.viewmodel.MobilePrepaidTwoVM
import kotlin.String
import kotlin.Unit

class MobilePrepaidTwoActivity :
    BaseActivity<ActivityMobilePrepaidTwoBinding>(R.layout.activity_mobile_prepaid_two) {
  private val viewModel: MobilePrepaidTwoVM by viewModels<MobilePrepaidTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.mobilePrepaidTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "MOBILE_PREPAID_TWO_ACTIVITY"

  }
}
