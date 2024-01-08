package com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout4RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBridgelandModernHouse: String? =
      MyApp.getInstance().resources.getString(R.string.msg_bridgeland_modern2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSemarangIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_semarang_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_260)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)

)
