package com.vertexrealestateapp.app.modules.addnewpropertydecsription.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyDecsriptionModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? = MyApp.getInstance().resources.getString(R.string.lbl_description)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertyAddress: String? =
      MyApp.getInstance().resources.getString(R.string.msg_property_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etAddressValue: String? = null
)
