package com.ecommerce.app.modules.changepassword.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ChangePasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChangePassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOldPassword: String? = MyApp.getInstance().resources.getString(R.string.lbl_old_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPassword: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPasswordAgain: String? =
      MyApp.getInstance().resources.getString(R.string.msg_new_password_again)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpassword1Value: String? = null
)
