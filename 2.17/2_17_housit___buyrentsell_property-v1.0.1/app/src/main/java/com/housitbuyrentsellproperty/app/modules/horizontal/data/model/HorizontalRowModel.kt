package com.housitbuyrentsellproperty.app.modules.horizontal.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class HorizontalRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBaliBeachviewVilla: String? =
      MyApp.getInstance().resources.getString(R.string.msg_bali_beachview_villa)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_2)
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
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_420)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)

)
