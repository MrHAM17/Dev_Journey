package com.healthcare.app.modules.cart.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class Drugs2RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOBHCombi: String? = MyApp.getInstance().resources.getString(R.string.lbl_obh_combi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMeasurement: String? = MyApp.getInstance().resources.getString(R.string.lbl_75ml)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)

)
