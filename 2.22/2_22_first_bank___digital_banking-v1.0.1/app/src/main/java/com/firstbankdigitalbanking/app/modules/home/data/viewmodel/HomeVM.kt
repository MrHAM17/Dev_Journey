package com.firstbankdigitalbanking.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.`data`.model.Model
import com.firstbankdigitalbanking.app.modules.home.`data`.model.BalanceRowModel
import com.firstbankdigitalbanking.app.modules.home.`data`.model.HomeModel
import com.firstbankdigitalbanking.app.modules.home.`data`.model.LiviabatorRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  public var includedModel: MutableLiveData<Model> = MutableLiveData(Model())

  val balanceList: MutableLiveData<MutableList<BalanceRowModel>> = MutableLiveData(mutableListOf())

  val liviaBatorList: MutableLiveData<MutableList<LiviabatorRowModel>> =
      MutableLiveData(mutableListOf())
}
