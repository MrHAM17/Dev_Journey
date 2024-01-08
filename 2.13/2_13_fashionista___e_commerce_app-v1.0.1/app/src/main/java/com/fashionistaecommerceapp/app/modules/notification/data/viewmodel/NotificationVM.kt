package com.fashionistaecommerceapp.app.modules.notification.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.notification.`data`.model.Frame4RowModel
import com.fashionistaecommerceapp.app.modules.notification.`data`.model.Frame5RowModel
import com.fashionistaecommerceapp.app.modules.notification.`data`.model.NotificationModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NotificationVM : ViewModel(), KoinComponent {
  val notificationModel: MutableLiveData<NotificationModel> = MutableLiveData(NotificationModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame4RowModel>> = MutableLiveData(mutableListOf())

  val frame1List: MutableLiveData<MutableList<Frame5RowModel>> = MutableLiveData(mutableListOf())
}
