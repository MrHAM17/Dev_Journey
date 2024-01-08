package com.shopsieecommerceapp.app.modules.register.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class RegisterModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHelloRegister: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hello_register)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrLoginWith: String? = MyApp.getInstance().resources.getString(R.string.lbl_or_login_with)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_already_have_an)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFirstNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLastNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
