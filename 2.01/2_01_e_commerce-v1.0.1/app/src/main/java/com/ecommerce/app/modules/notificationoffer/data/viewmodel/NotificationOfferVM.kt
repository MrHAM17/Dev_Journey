package com.ecommerce.app.modules.notificationoffer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.notificationoffer.`data`.model.NotificationOfferModel
import org.koin.core.KoinComponent

class NotificationOfferVM : ViewModel(), KoinComponent {
  val notificationOfferModel: MutableLiveData<NotificationOfferModel> =
      MutableLiveData(NotificationOfferModel())

  var navArguments: Bundle? = null
}
