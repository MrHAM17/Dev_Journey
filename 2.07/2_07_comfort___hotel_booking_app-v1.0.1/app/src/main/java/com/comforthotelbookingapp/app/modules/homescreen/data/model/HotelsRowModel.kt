package com.comforthotelbookingapp.app.modules.homescreen.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HotelsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEmeraldaDeHotel: String? =
      MyApp.getInstance().resources.getString(R.string.msg_emeralda_de_hotel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_29)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPerNight: String? = MyApp.getInstance().resources.getString(R.string.lbl_per_night)

)
