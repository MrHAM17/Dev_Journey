package com.comforthotelbookingapp.app.modules.welcomescreen.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class WelcomeScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeTo: String? = MyApp.getInstance().resources.getString(R.string.lbl_welcome_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComfort: String? = MyApp.getInstance().resources.getString(R.string.lbl_comfort)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheBestHotelBooking: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_best_hotel_booking)

)
