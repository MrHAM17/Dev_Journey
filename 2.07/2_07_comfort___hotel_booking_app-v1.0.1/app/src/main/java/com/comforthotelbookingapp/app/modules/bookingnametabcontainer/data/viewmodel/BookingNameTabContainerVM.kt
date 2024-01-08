package com.comforthotelbookingapp.app.modules.bookingnametabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.bookingnametabcontainer.`data`.model.BookingNameTabContainerModel
import org.koin.core.KoinComponent

class BookingNameTabContainerVM : ViewModel(), KoinComponent {
  val bookingNameTabContainerModel: MutableLiveData<BookingNameTabContainerModel> =
      MutableLiveData(BookingNameTabContainerModel())

  var navArguments: Bundle? = null
}
