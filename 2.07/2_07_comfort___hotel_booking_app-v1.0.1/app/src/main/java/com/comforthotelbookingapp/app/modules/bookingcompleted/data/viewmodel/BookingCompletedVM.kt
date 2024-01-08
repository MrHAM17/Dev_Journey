package com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.model.BookingCompletedModel
import com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.model.TicketsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class BookingCompletedVM : ViewModel(), KoinComponent {
  val bookingCompletedModel: MutableLiveData<BookingCompletedModel> =
      MutableLiveData(BookingCompletedModel())

  var navArguments: Bundle? = null

  val ticketsList: MutableLiveData<MutableList<TicketsRowModel>> = MutableLiveData(mutableListOf())
}
