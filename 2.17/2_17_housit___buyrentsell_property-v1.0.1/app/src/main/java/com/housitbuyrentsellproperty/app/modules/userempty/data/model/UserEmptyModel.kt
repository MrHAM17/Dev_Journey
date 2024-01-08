package com.housitbuyrentsellproperty.app.modules.userempty.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class UserEmptyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fill_your_information)
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
  var etLockValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etMobileNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
