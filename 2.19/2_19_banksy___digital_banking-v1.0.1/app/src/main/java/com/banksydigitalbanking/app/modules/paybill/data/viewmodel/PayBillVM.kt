package com.banksydigitalbanking.app.modules.paybill.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.paybill.`data`.model.PayBillModel
import com.banksydigitalbanking.app.modules.paybill.`data`.model.PaybillRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PayBillVM : ViewModel(), KoinComponent {
  val payBillModel: MutableLiveData<PayBillModel> = MutableLiveData(PayBillModel())

  var navArguments: Bundle? = null

  val payBillList: MutableLiveData<MutableList<PaybillRowModel>> = MutableLiveData(mutableListOf())
}
