package com.comforthotelbookingapp.app.modules.bookingongoing.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.bookingongoing.`data`.model.BookingOngoingModel
import com.comforthotelbookingapp.app.modules.bookingongoing.`data`.model.Tickets1RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class BookingOngoingVM : ViewModel(), KoinComponent {
  val bookingOngoingModel: MutableLiveData<BookingOngoingModel> =
      MutableLiveData(BookingOngoingModel())

  var navArguments: Bundle? = null

  val ticketsList: MutableLiveData<MutableList<Tickets1RowModel>> = MutableLiveData(mutableListOf())
}
