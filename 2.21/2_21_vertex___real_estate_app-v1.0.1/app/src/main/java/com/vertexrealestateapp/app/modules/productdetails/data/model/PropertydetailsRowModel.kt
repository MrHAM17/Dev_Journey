package com.vertexrealestateapp.app.modules.productdetails.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class PropertydetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBathroom: String? = MyApp.getInstance().resources.getString(R.string.lbl_bathroom)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRoomsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_rooms)

)
