package com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PreferableselectedRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtApartment: String? = MyApp.getInstance().resources.getString(R.string.lbl_apartment)

)
