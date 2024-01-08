package com.housitbuyrentsellproperty.app.modules.editform.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout5RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBedroom: String? = MyApp.getInstance().resources.getString(R.string.lbl_bedroom)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)

)
