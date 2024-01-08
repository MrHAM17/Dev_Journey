package com.firstbankdigitalbanking.app.modules.loans.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.loans.`data`.model.LoansModel
import com.firstbankdigitalbanking.app.modules.loans.`data`.model.LoansRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class LoansVM : ViewModel(), KoinComponent {
  val loansModel: MutableLiveData<LoansModel> = MutableLiveData(LoansModel())

  var navArguments: Bundle? = null

  val loansList: MutableLiveData<MutableList<LoansRowModel>> = MutableLiveData(mutableListOf())
}
