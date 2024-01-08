package com.safebankmobilebankingapp.app.modules.currencyexchange.ui

import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityCurrencyExchangeBinding
import com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.model.SpinnerUSD1Model
import com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.model.SpinnerUSDModel
import com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.viewmodel.CurrencyExchangeVM
import com.safebankmobilebankingapp.app.modules.transferamount.ui.TransferAmountActivity
import kotlin.String
import kotlin.Unit

class CurrencyExchangeActivity :
    BaseActivity<ActivityCurrencyExchangeBinding>(R.layout.activity_currency_exchange) {
  private val viewModel: CurrencyExchangeVM by viewModels<CurrencyExchangeVM>()

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
    viewModel.spinnerUSD1List.value = mutableListOf(
    SpinnerUSD1Model("Item1"),
    SpinnerUSD1Model("Item2"),
    SpinnerUSD1Model("Item3"),
    SpinnerUSD1Model("Item4"),
    SpinnerUSD1Model("Item5")
    )
    val spinnerUSD1Adapter =
    SpinnerUSD1Adapter(this,R.layout.spinner_item,viewModel.spinnerUSD1List.value?:
    mutableListOf())
    binding.spinnerUSD1.adapter = spinnerUSD1Adapter
    binding.currencyExchangeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnTransferMoney.setOnClickListener {
      val destIntent = TransferAmountActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.linearMastercard.setOnClickListener {
      // TODO please, add your navigation code here
    }
    binding.linearVisa.setOnClickListener {
      // TODO please, add your navigation code here
    }
  }

  companion object {
    const val TAG: String = "CURRENCY_EXCHANGE_ACTIVITY"

  }
}
