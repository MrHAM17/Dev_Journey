package com.safebankmobilebankingapp.app.modules.transferrequest.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.transferrequest.`data`.model.TransferRequestModel
import com.safebankmobilebankingapp.app.modules.transferrequest.`data`.model.TransferrequestRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TransferRequestVM : ViewModel(), KoinComponent {
  val transferRequestModel: MutableLiveData<TransferRequestModel> =
      MutableLiveData(TransferRequestModel())

  var navArguments: Bundle? = null

  val transferRequestList: MutableLiveData<MutableList<TransferrequestRowModel>> =
      MutableLiveData(mutableListOf())
}
