package com.hiredjobsearch.app.modules.home.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class EightyeightRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDigitalMarketing: String? =
      MyApp.getInstance().resources.getString(R.string.msg_digital_marketing)
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
