package com.housitbuyrentsellproperty.app.modules.transaction.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.transaction.`data`.model.TransactionModel
import com.housitbuyrentsellproperty.app.modules.transaction.`data`.model.TransactionRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TransactionVM : ViewModel(), KoinComponent {
  val transactionModel: MutableLiveData<TransactionModel> = MutableLiveData(TransactionModel())

  var navArguments: Bundle? = null

  val transactionList: MutableLiveData<MutableList<TransactionRowModel>> =
      MutableLiveData(mutableListOf())
}
