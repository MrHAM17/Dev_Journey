package com.housitbuyrentsellproperty.app.modules.notificationlisttabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.notificationlisttabcontainer.`data`.model.NotificationListTabContainerModel
import org.koin.core.KoinComponent

class NotificationListTabContainerVM : ViewModel(), KoinComponent {
  val notificationListTabContainerModel: MutableLiveData<NotificationListTabContainerModel> =
      MutableLiveData(NotificationListTabContainerModel())

  var navArguments: Bundle? = null
}
