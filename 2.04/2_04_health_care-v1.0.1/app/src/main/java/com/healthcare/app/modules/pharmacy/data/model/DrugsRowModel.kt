package com.healthcare.app.modules.pharmacy.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class DrugsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPanadol: String? = MyApp.getInstance().resources.getString(R.string.lbl_panadol)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuantiity: String? = MyApp.getInstance().resources.getString(R.string.lbl_20pcs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_15_99)

)
