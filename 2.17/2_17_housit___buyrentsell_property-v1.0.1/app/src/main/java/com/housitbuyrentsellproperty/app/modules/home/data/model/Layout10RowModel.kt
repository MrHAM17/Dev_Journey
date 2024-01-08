package com.housitbuyrentsellproperty.app.modules.home.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout10RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBali: String? = MyApp.getInstance().resources.getString(R.string.lbl_bali)

)
