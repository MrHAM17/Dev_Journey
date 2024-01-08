package com.helthiotelehealth.app.modules.mycart.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class DurgsRowModel(
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
  var txtOne: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)

)
