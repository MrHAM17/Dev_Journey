package com.housitbuyrentsellproperty.app.modules.toplocations.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class DataRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBali: String? = MyApp.getInstance().resources.getString(R.string.lbl_bali)

)
