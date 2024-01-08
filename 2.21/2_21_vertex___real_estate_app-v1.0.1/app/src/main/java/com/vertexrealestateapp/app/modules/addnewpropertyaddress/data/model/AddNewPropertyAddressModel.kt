package com.vertexrealestateapp.app.modules.addnewpropertyaddress.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyAddressModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddress: String? = MyApp.getInstance().resources.getString(R.string.lbl_address)
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
  var etAddressValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFieldsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etZipcodeValue: String? = null
)
