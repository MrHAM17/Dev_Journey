package com.healthcare.app.modules.pharmacy.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class Drugs1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPanadol: String? = MyApp.getInstance().resources.getString(R.string.lbl_obh_combi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMeasurement: String? = MyApp.getInstance().resources.getString(R.string.lbl_75ml)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)

)
