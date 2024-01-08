package com.housitbuyrentsellproperty.app.modules.addlocation.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class AddLocationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_listing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_where_is_the_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJlCisangkuyCitarum: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jl_cisangkuy_citarum)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectOnTheMap: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_on_the_map)

)
