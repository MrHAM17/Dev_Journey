package com.comforthotelbookingapp.app.modules.viewticket.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.viewticket.`data`.model.ViewTicketModel
import org.koin.core.KoinComponent

class ViewTicketVM : ViewModel(), KoinComponent {
  val viewTicketModel: MutableLiveData<ViewTicketModel> = MutableLiveData(ViewTicketModel())

  var navArguments: Bundle? = null
}
