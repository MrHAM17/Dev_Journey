package com.vertexrealestateapp.app.modules.notificationemptystates.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.notificationemptystates.`data`.model.NotificationEmptyStatesModel
import org.koin.core.KoinComponent

class NotificationEmptyStatesVM : ViewModel(), KoinComponent {
  val notificationEmptyStatesModel: MutableLiveData<NotificationEmptyStatesModel> =
      MutableLiveData(NotificationEmptyStatesModel())

  var navArguments: Bundle? = null
}
