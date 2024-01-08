package com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.model.AddNewPropertyTimeToSellModel
import com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.model.AddnewpropertytimetosellRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewPropertyTimeToSellVM : ViewModel(), KoinComponent {
  val addNewPropertyTimeToSellModel: MutableLiveData<AddNewPropertyTimeToSellModel> =
      MutableLiveData(AddNewPropertyTimeToSellModel())

  var navArguments: Bundle? = null

  val addNewPropertyTimetosellList: MutableLiveData<MutableList<AddnewpropertytimetosellRowModel>> =
      MutableLiveData(mutableListOf())
}
