package com.ecommerce.app.modules.notificationfeed.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.notificationfeed.`data`.model.NotificationFeedModel
import org.koin.core.KoinComponent

class NotificationFeedVM : ViewModel(), KoinComponent {
  val notificationFeedModel: MutableLiveData<NotificationFeedModel> =
      MutableLiveData(NotificationFeedModel())

  var navArguments: Bundle? = null
}
