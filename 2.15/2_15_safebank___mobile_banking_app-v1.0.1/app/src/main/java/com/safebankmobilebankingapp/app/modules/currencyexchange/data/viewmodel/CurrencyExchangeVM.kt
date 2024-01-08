package com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.model.CurrencyExchangeModel
import com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.model.SpinnerUSD1Model
import com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.model.SpinnerUSDModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CurrencyExchangeVM : ViewModel(), KoinComponent {
  val currencyExchangeModel: MutableLiveData<CurrencyExchangeModel> =
      MutableLiveData(CurrencyExchangeModel())

  var navArguments: Bundle? = null

  val spinnerUSDList: MutableLiveData<MutableList<SpinnerUSDModel>> = MutableLiveData()

  val spinnerUSD1List: MutableLiveData<MutableList<SpinnerUSD1Model>> = MutableLiveData()
}
