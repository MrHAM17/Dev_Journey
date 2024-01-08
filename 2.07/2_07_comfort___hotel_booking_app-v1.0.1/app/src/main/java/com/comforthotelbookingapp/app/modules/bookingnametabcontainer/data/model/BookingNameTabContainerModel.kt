package com.comforthotelbookingapp.app.modules.bookingnametabcontainer.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class BookingNameTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.msg_name_of_reservation)

)
