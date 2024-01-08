package com.blogapp.app.modules.signup.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRegisterNow: String? = MyApp.getInstance().resources.getString(R.string.lbl_register_now)
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
  var txtSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_by_signing_up_you)

)
