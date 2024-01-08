package com.firstbankdigitalbanking.app.modules.transactions.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.ArRowModel
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.Balance1RowModel
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.TransactionsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TransactionsVM : ViewModel(), KoinComponent {
  val transactionsModel: MutableLiveData<TransactionsModel> = MutableLiveData(TransactionsModel())

  var navArguments: Bundle? = null

  val balanceList: MutableLiveData<MutableList<Balance1RowModel>> = MutableLiveData(mutableListOf())

  val arrowList: MutableLiveData<MutableList<ArRowModel>> = MutableLiveData(mutableListOf())
}
