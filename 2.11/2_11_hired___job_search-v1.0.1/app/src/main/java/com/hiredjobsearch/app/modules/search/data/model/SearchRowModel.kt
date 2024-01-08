package com.hiredjobsearch.app.modules.search.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SearchRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDigitalMarketing: String? =
      MyApp.getInstance().resources.getString(R.string.msg_senior_ui_ux_designer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMotorola: String? = MyApp.getInstance().resources.getString(R.string.lbl_motorola)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.msg_560_12_000_month)

)
