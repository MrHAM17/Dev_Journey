package com.shopsieecommerceapp.app.modules.events.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.events.`data`.model.EventsModel
import com.shopsieecommerceapp.app.modules.events.`data`.model.EventsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class EventsVM : ViewModel(), KoinComponent {
  val eventsModel: MutableLiveData<EventsModel> = MutableLiveData(EventsModel())

  var navArguments: Bundle? = null

  val eventsList: MutableLiveData<MutableList<EventsRowModel>> = MutableLiveData(mutableListOf())
}
