package com.shopsieecommerceapp.app.modules.profilesecurity.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileSecurityModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChangePassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCurrentPassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_current_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPassword: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null
)
