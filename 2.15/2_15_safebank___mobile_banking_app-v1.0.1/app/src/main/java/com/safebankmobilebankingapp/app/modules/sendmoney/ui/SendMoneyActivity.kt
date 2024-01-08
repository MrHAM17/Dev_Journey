package com.safebankmobilebankingapp.app.modules.sendmoney.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivitySendMoneyBinding
import com.safebankmobilebankingapp.app.modules.confirmation.ui.ConfirmationActivity
import com.safebankmobilebankingapp.app.modules.sendmoney.`data`.model.SpinnerUSDModel
import com.safebankmobilebankingapp.app.modules.sendmoney.`data`.viewmodel.SendMoneyVM
import kotlin.String
import kotlin.Unit

class SendMoneyActivity : BaseActivity<ActivitySendMoneyBinding>(R.layout.activity_send_money) {
  private val viewModel: SendMoneyVM by viewModels<SendMoneyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerUSDList.value = mutableListOf(
    SpinnerUSDModel("Item1"),
    SpinnerUSDModel("Item2"),
    SpinnerUSDModel("Item3"),
    SpinnerUSDModel("Item4"),
    SpinnerUSDModel("Item5")
    )
    val spinnerUSDAdapter =
    SpinnerUSDAdapter(this,R.layout.spinner_item,viewModel.spinnerUSDList.value?:
    mutableListOf())
    binding.spinnerUSD.adapter = spinnerUSDAdapter
    binding.sendMoneyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnSendMoney.setOnClickListener {
      val destIntent = ConfirmationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "SEND_MONEY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SendMoneyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
