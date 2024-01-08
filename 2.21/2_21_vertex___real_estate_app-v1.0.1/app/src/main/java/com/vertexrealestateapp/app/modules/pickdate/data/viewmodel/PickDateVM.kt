package com.vertexrealestateapp.app.modules.pickdate.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.pickdate.`data`.model.PickDateModel
import com.vertexrealestateapp.app.modules.pickdate.`data`.model.Time1RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PickDateVM : ViewModel(), KoinComponent {
  val pickDateModel: MutableLiveData<PickDateModel> = MutableLiveData(PickDateModel())

  var navArguments: Bundle? = null

  val timeList: MutableLiveData<MutableList<Time1RowModel>> = MutableLiveData(mutableListOf())
}
