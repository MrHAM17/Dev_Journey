package com.tunecastmusicstreamingpodcastapp.app.modules.signin.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLoginToYourAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_login_to_your_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtForgotThePassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_forgot_the_password)
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
      MyApp.getInstance().resources.getString(R.string.msg_don_t_have_an_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSignUp: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)
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
