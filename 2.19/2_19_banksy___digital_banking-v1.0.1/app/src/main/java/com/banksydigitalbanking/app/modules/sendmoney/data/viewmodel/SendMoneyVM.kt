package com.banksydigitalbanking.app.modules.sendmoney.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.NineteenRowModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.ProfilelistRowModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.SendMoneyModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.TwentytwoRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SendMoneyVM : ViewModel(), KoinComponent {
  val sendMoneyModel: MutableLiveData<SendMoneyModel> = MutableLiveData(SendMoneyModel())

  var navArguments: Bundle? = null

  val profileListList: MutableLiveData<MutableList<ProfilelistRowModel>> =
      MutableLiveData(mutableListOf())

  val nineteenList: MutableLiveData<MutableList<NineteenRowModel>> =
      MutableLiveData(mutableListOf())

  val twentyTwoList: MutableLiveData<MutableList<TwentytwoRowModel>> =
      MutableLiveData(mutableListOf())
}
