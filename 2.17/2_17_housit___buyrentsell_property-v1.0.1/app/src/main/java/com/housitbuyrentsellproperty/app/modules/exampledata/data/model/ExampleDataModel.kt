package com.housitbuyrentsellproperty.app.modules.exampledata.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ExampleDataModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtItemCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNearbyYou: String? = MyApp.getInstance().resources.getString(R.string.lbl_nearby_you)

)
