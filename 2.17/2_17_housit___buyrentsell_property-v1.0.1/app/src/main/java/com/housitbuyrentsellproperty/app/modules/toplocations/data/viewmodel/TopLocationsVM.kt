package com.housitbuyrentsellproperty.app.modules.toplocations.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.toplocations.`data`.model.DataRowModel
import com.housitbuyrentsellproperty.app.modules.toplocations.`data`.model.TopLocationsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopLocationsVM : ViewModel(), KoinComponent {
  val topLocationsModel: MutableLiveData<TopLocationsModel> = MutableLiveData(TopLocationsModel())

  var navArguments: Bundle? = null

  val dataList: MutableLiveData<MutableList<DataRowModel>> = MutableLiveData(mutableListOf())
}
