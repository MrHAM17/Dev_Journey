package com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class LocationDistanceModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLocationDistance: String? =
      MyApp.getInstance().resources.getString(R.string.msg_location_distance)

)
