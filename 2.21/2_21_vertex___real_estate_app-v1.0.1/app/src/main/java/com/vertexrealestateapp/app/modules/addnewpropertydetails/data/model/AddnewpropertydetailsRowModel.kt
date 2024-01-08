package com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddnewpropertydetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEstimatePrice: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_estimate_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_200_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget: String? = MyApp.getInstance().resources.getString(R.string.lbl_4)

)
