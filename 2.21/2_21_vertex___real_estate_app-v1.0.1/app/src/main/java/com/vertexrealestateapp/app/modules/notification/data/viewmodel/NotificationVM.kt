package com.vertexrealestateapp.app.modules.notification.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.notification.`data`.model.ChartlineRowModel
import com.vertexrealestateapp.app.modules.notification.`data`.model.NotificationModel
import com.vertexrealestateapp.app.modules.notification.`data`.model.SeventyfourRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NotificationVM : ViewModel(), KoinComponent {
  val notificationModel: MutableLiveData<NotificationModel> = MutableLiveData(NotificationModel())

  var navArguments: Bundle? = null

  val seventyFourList: MutableLiveData<MutableList<SeventyfourRowModel>> =
      MutableLiveData(mutableListOf())

  val chartLineList: MutableLiveData<MutableList<ChartlineRowModel>> =
      MutableLiveData(mutableListOf())
}
