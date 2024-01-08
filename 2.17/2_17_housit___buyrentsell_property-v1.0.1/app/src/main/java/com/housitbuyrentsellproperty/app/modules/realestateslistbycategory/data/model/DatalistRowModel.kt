package com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class DatalistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtVilla: String? = MyApp.getInstance().resources.getString(R.string.lbl_villa)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheLaurelsVilla: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_laurels_villa)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_92)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBaliIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_bali_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_320)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)

)
