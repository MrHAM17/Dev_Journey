package com.housitbuyrentsellproperty.app.modules.preferable.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PreferableRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHouse: String? = MyApp.getInstance().resources.getString(R.string.lbl_house)

)
