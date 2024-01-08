package com.safebankmobilebankingapp.app.modules.sendmoney.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.sendmoney.`data`.model.SendMoneyModel
import com.safebankmobilebankingapp.app.modules.sendmoney.`data`.model.SpinnerUSDModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SendMoneyVM : ViewModel(), KoinComponent {
  val sendMoneyModel: MutableLiveData<SendMoneyModel> = MutableLiveData(SendMoneyModel())

  var navArguments: Bundle? = null

  val spinnerUSDList: MutableLiveData<MutableList<SpinnerUSDModel>> = MutableLiveData()
}
