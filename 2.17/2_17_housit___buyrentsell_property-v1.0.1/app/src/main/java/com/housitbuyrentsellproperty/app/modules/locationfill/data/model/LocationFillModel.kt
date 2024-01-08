package com.housitbuyrentsellproperty.app.modules.locationfill.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class LocationFillModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_add_your_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_can_edit_this)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectOnMap: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_on_map2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWestJakarta: String? = MyApp.getInstance().resources.getString(R.string.lbl_west_jakarta)

)
