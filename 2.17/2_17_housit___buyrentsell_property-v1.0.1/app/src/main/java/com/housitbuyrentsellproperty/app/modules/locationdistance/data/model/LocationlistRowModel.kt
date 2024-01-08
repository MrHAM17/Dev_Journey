package com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class LocationlistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? =
      MyApp.getInstance().resources.getString(R.string.msg_2_5_km_from_srengseng)

)
