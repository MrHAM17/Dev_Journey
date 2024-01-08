package com.housitbuyrentsellproperty.app.modules.topagents.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Datalist1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAmanda: String? = MyApp.getInstance().resources.getString(R.string.lbl_amanda)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl_112)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSold: String? = MyApp.getInstance().resources.getString(R.string.lbl_sold)

)
