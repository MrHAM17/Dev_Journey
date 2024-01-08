package com.moviestreaming.app.modules.login.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class LoginModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLogIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_log_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPutYourEmailAddre: String? =
      MyApp.getInstance().resources.getString(R.string.msg_put_your_email_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_don_t_have_an_account)
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
