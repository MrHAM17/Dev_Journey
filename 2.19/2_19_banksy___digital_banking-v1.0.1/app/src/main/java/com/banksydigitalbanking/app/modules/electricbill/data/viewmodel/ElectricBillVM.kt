package com.banksydigitalbanking.app.modules.electricbill.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.electricbill.`data`.model.ElectricBillModel
import com.banksydigitalbanking.app.modules.electricbill.`data`.model.ElectricbillRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ElectricBillVM : ViewModel(), KoinComponent {
  val electricBillModel: MutableLiveData<ElectricBillModel> = MutableLiveData(ElectricBillModel())

  var navArguments: Bundle? = null

  val electricBillList: MutableLiveData<MutableList<ElectricbillRowModel>> =
      MutableLiveData(mutableListOf())
}
