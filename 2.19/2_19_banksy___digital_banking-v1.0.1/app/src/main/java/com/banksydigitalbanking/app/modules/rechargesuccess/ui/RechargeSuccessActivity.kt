package com.banksydigitalbanking.app.modules.rechargesuccess.ui

import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityRechargeSuccessBinding
import com.banksydigitalbanking.app.modules.rechargesuccess.`data`.viewmodel.RechargeSuccessVM
import kotlin.String
import kotlin.Unit

class RechargeSuccessActivity :
    BaseActivity<ActivityRechargeSuccessBinding>(R.layout.activity_recharge_success) {
  private val viewModel: RechargeSuccessVM by viewModels<RechargeSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.rechargeSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "RECHARGE_SUCCESS_ACTIVITY"

  }
}
