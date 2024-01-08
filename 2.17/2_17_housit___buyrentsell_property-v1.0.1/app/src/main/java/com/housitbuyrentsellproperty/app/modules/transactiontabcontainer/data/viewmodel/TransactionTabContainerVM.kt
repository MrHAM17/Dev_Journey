package com.housitbuyrentsellproperty.app.modules.transactiontabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.transactiontabcontainer.`data`.model.TransactionTabContainerModel
import org.koin.core.KoinComponent

class TransactionTabContainerVM : ViewModel(), KoinComponent {
  val transactionTabContainerModel: MutableLiveData<TransactionTabContainerModel> =
      MutableLiveData(TransactionTabContainerModel())

  var navArguments: Bundle? = null
}
