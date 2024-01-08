package com.hiredjobsearch.app.modules.notificationsgeneral.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.notificationsgeneral.`data`.model.NotificationsGeneralModel
import com.hiredjobsearch.app.modules.notificationsgeneral.`data`.model.NotificationsgeneralRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NotificationsGeneralVM : ViewModel(), KoinComponent {
  val notificationsGeneralModel: MutableLiveData<NotificationsGeneralModel> =
      MutableLiveData(NotificationsGeneralModel())

  var navArguments: Bundle? = null

  val notificationsGeneralList: MutableLiveData<MutableList<NotificationsgeneralRowModel>> =
      MutableLiveData(mutableListOf())
}
