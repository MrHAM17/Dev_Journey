package com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class BookingCompletedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComfort: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_bookings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOngoing: String? = MyApp.getInstance().resources.getString(R.string.lbl_ongoing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCompleted: String? = MyApp.getInstance().resources.getString(R.string.lbl_completed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCancelled: String? = MyApp.getInstance().resources.getString(R.string.lbl_cancelled)

)
