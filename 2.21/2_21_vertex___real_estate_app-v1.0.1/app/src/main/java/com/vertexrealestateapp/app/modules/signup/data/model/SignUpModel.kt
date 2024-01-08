package com.vertexrealestateapp.app.modules.signup.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.msg_create_a_vertex)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBody: String? = MyApp.getInstance().resources.getString(R.string.msg_create_an_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrcontinuewithsocialaccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_or_continue_with)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_already_have)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSignUp: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFullNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
