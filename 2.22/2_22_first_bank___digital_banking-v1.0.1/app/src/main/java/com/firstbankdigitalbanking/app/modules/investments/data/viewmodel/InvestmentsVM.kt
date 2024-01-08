package com.firstbankdigitalbanking.app.modules.investments.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.ApplestoreRowModel
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.InvestmentsModel
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.MoneybagofdollarsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class InvestmentsVM : ViewModel(), KoinComponent {
  val investmentsModel: MutableLiveData<InvestmentsModel> = MutableLiveData(InvestmentsModel())

  var navArguments: Bundle? = null

  val moneyBagOfDollarsList: MutableLiveData<MutableList<MoneybagofdollarsRowModel>> =
      MutableLiveData(mutableListOf())

  val appleStoreList: MutableLiveData<MutableList<ApplestoreRowModel>> =
      MutableLiveData(mutableListOf())
}
