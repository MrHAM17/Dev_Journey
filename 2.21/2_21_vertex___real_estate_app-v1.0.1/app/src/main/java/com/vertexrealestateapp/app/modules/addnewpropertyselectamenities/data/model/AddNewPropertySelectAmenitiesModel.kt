package com.vertexrealestateapp.app.modules.addnewpropertyselectamenities.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertySelectAmenitiesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectAmenities: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_amenities)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectAmenities1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_amenities)

)
