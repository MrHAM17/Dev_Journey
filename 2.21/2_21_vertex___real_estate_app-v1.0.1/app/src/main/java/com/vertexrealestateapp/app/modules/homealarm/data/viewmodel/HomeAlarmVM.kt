package com.vertexrealestateapp.app.modules.homealarm.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.homealarm.`data`.model.HomeAlarmModel
import com.vertexrealestateapp.app.modules.homealarm.`data`.model.HomealarmRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeAlarmVM : ViewModel(), KoinComponent {
  val homeAlarmModel: MutableLiveData<HomeAlarmModel> = MutableLiveData(HomeAlarmModel())

  var navArguments: Bundle? = null

  val homeAlarmList: MutableLiveData<MutableList<HomealarmRowModel>> =
      MutableLiveData(mutableListOf())
}
