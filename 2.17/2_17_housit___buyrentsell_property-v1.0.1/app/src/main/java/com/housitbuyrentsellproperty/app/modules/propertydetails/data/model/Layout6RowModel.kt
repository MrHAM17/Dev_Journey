package com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout6RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBedroomCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_bedroom)

)
