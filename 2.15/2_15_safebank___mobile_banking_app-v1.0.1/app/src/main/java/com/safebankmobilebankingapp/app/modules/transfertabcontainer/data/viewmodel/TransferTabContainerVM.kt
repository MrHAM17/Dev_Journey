package com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.model.TransferTabContainerModel
import com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.model.TransfertabcontainerRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TransferTabContainerVM : ViewModel(), KoinComponent {
  val transferTabContainerModel: MutableLiveData<TransferTabContainerModel> =
      MutableLiveData(TransferTabContainerModel())

  var navArguments: Bundle? = null

  val transferTabContainerList: MutableLiveData<MutableList<TransfertabcontainerRowModel>> =
      MutableLiveData(mutableListOf())
}
