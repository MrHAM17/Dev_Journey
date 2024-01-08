package com.comforthotelbookingapp.app.modules.signupblank.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpBlankModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateYourAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_your_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrContinueWith: String? =
      MyApp.getInstance().resources.getString(R.string.msg_or_continue_with)
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
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
