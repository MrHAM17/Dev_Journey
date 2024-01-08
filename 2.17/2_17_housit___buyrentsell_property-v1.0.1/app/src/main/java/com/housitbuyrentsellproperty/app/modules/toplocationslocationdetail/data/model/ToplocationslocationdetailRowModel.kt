package com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ToplocationslocationdetailRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFlowerHeavenHouse: String? =
      MyApp.getInstance().resources.getString(R.string.msg_flower_heaven_house)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_72)
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
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_370)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)

)
