package com.vertexrealestateapp.app.modules.addnewpropertycontact.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyContactModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtContact: String? = MyApp.getInstance().resources.getString(R.string.lbl_contact)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTellUsALittle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_tell_us_a_little)

)
