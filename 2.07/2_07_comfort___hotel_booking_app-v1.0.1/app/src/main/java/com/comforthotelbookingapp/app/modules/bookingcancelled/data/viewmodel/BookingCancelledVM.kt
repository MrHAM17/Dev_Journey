package com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.model.BookingCancelledModel
import com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.model.Tickets2RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class BookingCancelledVM : ViewModel(), KoinComponent {
  val bookingCancelledModel: MutableLiveData<BookingCancelledModel> =
      MutableLiveData(BookingCancelledModel())

  var navArguments: Bundle? = null

  val ticketsList: MutableLiveData<MutableList<Tickets2RowModel>> = MutableLiveData(mutableListOf())
}
