package com.housitbuyrentsellproperty.app.modules.topagents.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.topagents.`data`.model.Datalist1RowModel
import com.housitbuyrentsellproperty.app.modules.topagents.`data`.model.TopAgentsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopAgentsVM : ViewModel(), KoinComponent {
  val topAgentsModel: MutableLiveData<TopAgentsModel> = MutableLiveData(TopAgentsModel())

  var navArguments: Bundle? = null

  val dataListList: MutableLiveData<MutableList<Datalist1RowModel>> =
      MutableLiveData(mutableListOf())
}
