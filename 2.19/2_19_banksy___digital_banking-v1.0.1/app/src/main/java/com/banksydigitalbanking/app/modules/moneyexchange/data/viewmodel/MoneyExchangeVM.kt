package com.banksydigitalbanking.app.modules.moneyexchange.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.moneyexchange.`data`.model.MoneyExchangeModel
import com.banksydigitalbanking.app.modules.moneyexchange.`data`.model.SpinnerFavoriteModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MoneyExchangeVM : ViewModel(), KoinComponent {
  val moneyExchangeModel: MutableLiveData<MoneyExchangeModel> =
      MutableLiveData(MoneyExchangeModel())

  var navArguments: Bundle? = null

  val spinnerFavoriteList: MutableLiveData<MutableList<SpinnerFavoriteModel>> = MutableLiveData()
}
