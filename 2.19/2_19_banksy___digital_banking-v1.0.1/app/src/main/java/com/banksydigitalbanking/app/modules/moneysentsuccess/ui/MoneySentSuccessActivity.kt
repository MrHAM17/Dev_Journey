package com.banksydigitalbanking.app.modules.moneysentsuccess.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityMoneySentSuccessBinding
import com.banksydigitalbanking.app.modules.moneysentsuccess.`data`.viewmodel.MoneySentSuccessVM
import kotlin.String
import kotlin.Unit

class MoneySentSuccessActivity :
    BaseActivity<ActivityMoneySentSuccessBinding>(R.layout.activity_money_sent_success) {
  private val viewModel: MoneySentSuccessVM by viewModels<MoneySentSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.moneySentSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "MONEY_SENT_SUCCESS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, MoneySentSuccessActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
