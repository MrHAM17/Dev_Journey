package com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.model.SelectVirtualAppModel
import com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.model.SelectvirtualappRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SelectVirtualAppVM : ViewModel(), KoinComponent {
  val selectVirtualAppModel: MutableLiveData<SelectVirtualAppModel> =
      MutableLiveData(SelectVirtualAppModel())

  var navArguments: Bundle? = null

  val selectVirtualAppList: MutableLiveData<MutableList<SelectvirtualappRowModel>> =
      MutableLiveData(mutableListOf())
}
