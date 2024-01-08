package com.housitbuyrentsellproperty.app.modules.locationempty.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class LocationEmptyModel(
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
  var txtLocationdetail: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_location_detail)

)
