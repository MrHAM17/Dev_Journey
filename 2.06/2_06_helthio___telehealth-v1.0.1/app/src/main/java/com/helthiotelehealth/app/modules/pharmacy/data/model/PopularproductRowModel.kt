package com.helthiotelehealth.app.modules.pharmacy.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class PopularproductRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPanadol: String? = MyApp.getInstance().resources.getString(R.string.lbl_panadol)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPcs: String? = MyApp.getInstance().resources.getString(R.string.lbl_20pcs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_15_99)

)
