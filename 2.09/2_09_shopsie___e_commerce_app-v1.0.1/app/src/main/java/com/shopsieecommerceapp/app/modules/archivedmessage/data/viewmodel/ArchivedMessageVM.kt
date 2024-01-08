package com.shopsieecommerceapp.app.modules.archivedmessage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.archivedmessage.`data`.model.ArchivedMessageModel
import com.shopsieecommerceapp.app.modules.archivedmessage.`data`.model.ArchivedmessageRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArchivedMessageVM : ViewModel(), KoinComponent {
  val archivedMessageModel: MutableLiveData<ArchivedMessageModel> =
      MutableLiveData(ArchivedMessageModel())

  var navArguments: Bundle? = null

  val archivedMessageList: MutableLiveData<MutableList<ArchivedmessageRowModel>> =
      MutableLiveData(mutableListOf())
}
