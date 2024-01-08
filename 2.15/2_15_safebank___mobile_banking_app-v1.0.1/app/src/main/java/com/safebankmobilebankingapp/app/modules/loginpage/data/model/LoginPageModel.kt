package com.safebankmobilebankingapp.app.modules.loginpage.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class LoginPageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRemeberMeForget: String? =
      MyApp.getInstance().resources.getString(R.string.msg_forget_password)
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
  var txtAlreadyHaveAn: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = MyApp.getInstance().resources.getString(R.string.lbl_xyz123)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
