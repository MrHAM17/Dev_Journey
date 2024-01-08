package com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class BookingCancelledModel(
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBooking: String? = MyApp.getInstance().resources.getString(R.string.lbl_booking)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
