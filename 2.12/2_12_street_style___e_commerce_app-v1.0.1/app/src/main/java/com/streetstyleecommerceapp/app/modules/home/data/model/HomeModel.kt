package com.streetstyleecommerceapp.app.modules.home.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtStreetStyle: String? = MyApp.getInstance().resources.getString(R.string.lbl_street_style)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBIGSEASONALSALE: String? =
      MyApp.getInstance().resources.getString(R.string.msg_big_seasonal_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSAVEUPTO: String? = MyApp.getInstance().resources.getString(R.string.lbl_save_up_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSAVEUPTO1: String? = MyApp.getInstance().resources.getString(R.string.lbl_75)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBestSellers: String? = MyApp.getInstance().resources.getString(R.string.lbl_bestsellers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFuelYourWorkout: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fuel_your_workout)

)
