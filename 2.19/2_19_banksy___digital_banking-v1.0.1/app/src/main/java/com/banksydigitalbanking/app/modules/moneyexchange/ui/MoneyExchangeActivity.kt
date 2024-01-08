package com.banksydigitalbanking.app.modules.moneyexchange.ui

import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityMoneyExchangeBinding
import com.banksydigitalbanking.app.modules.moneyexchange.`data`.model.SpinnerFavoriteModel
import com.banksydigitalbanking.app.modules.moneyexchange.`data`.viewmodel.MoneyExchangeVM
import kotlin.String
import kotlin.Unit

class MoneyExchangeActivity :
    BaseActivity<ActivityMoneyExchangeBinding>(R.layout.activity_money_exchange) {
  private val viewModel: MoneyExchangeVM by viewModels<MoneyExchangeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerFavoriteList.value = mutableListOf(
    SpinnerFavoriteModel("Item1"),
    SpinnerFavoriteModel("Item2"),
    SpinnerFavoriteModel("Item3"),
    SpinnerFavoriteModel("Item4"),
    SpinnerFavoriteModel("Item5")
    )
    val spinnerFavoriteAdapter =
    SpinnerFavoriteAdapter(this,R.layout.spinner_item,viewModel.spinnerFavoriteList.value?:
    mutableListOf())
    binding.spinnerFavorite.adapter = spinnerFavoriteAdapter
    binding.moneyExchangeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "MONEY_EXCHANGE_ACTIVITY"

  }
}
