package com.vertexrealestateapp.app.modules.homealarmcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.homealarmcontainer.`data`.model.HomeAlarmContainerModel
import org.koin.core.KoinComponent

class HomeAlarmContainerVM : ViewModel(), KoinComponent {
  val homeAlarmContainerModel: MutableLiveData<HomeAlarmContainerModel> =
      MutableLiveData(HomeAlarmContainerModel())

  var navArguments: Bundle? = null
}
