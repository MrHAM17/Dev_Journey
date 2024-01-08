package com.housitbuyrentsellproperty.app.modules.call.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class CallModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMilano: String? = MyApp.getInstance().resources.getString(R.string.lbl_milano)

)
