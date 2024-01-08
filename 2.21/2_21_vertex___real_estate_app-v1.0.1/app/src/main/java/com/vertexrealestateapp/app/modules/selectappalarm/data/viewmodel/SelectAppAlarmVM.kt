package com.vertexrealestateapp.app.modules.selectappalarm.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.selectappalarm.`data`.model.SelectAppAlarmModel
import org.koin.core.KoinComponent

class SelectAppAlarmVM : ViewModel(), KoinComponent {
  val selectAppAlarmModel: MutableLiveData<SelectAppAlarmModel> =
      MutableLiveData(SelectAppAlarmModel())

  var navArguments: Bundle? = null
}
