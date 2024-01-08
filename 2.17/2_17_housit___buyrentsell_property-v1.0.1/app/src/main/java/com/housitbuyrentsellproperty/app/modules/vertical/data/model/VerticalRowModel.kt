package com.housitbuyrentsellproperty.app.modules.vertical.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class VerticalRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_320)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)
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
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBaliIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_bali_indonesia)

)
