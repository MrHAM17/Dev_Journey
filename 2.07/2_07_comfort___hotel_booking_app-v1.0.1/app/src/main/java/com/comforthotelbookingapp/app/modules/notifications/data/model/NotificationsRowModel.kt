package com.comforthotelbookingapp.app.modules.notifications.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtYouHaveCanceled: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_have_canceled)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHotelBookingCanceled: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hotel_booking_canceled)

)
