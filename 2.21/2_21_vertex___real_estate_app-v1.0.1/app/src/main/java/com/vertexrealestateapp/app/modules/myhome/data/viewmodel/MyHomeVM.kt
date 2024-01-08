package com.vertexrealestateapp.app.modules.myhome.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.myhome.`data`.model.ListRowModel
import com.vertexrealestateapp.app.modules.myhome.`data`.model.MyHomeModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MyHomeVM : ViewModel(), KoinComponent {
  val myHomeModel: MutableLiveData<MyHomeModel> = MutableLiveData(MyHomeModel())

  var navArguments: Bundle? = null

  val listList: MutableLiveData<MutableList<ListRowModel>> = MutableLiveData(mutableListOf())
}
