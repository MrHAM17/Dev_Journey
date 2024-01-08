package com.shopsieecommerceapp.app.modules.eventstabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.eventstabcontainer.`data`.model.EventsTabContainerModel
import org.koin.core.KoinComponent

class EventsTabContainerVM : ViewModel(), KoinComponent {
  val eventsTabContainerModel: MutableLiveData<EventsTabContainerModel> =
      MutableLiveData(EventsTabContainerModel())

  var navArguments: Bundle? = null
}
