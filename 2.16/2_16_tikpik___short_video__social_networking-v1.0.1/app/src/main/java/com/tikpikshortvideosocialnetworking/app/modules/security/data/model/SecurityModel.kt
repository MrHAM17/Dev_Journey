package com.tikpikshortvideosocialnetworking.app.modules.security.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SecurityModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtControl: String? = MyApp.getInstance().resources.getString(R.string.lbl_control)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurityAlerts: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_security_alerts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManageDevices: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_manage_devices)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManagePermission: String? =
      MyApp.getInstance().resources.getString(R.string.msg_manage_permission)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurity: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRememberMe: String? = MyApp.getInstance().resources.getString(R.string.lbl_remember_me)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFaceID: String? = MyApp.getInstance().resources.getString(R.string.lbl_face_id)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBiometricID: String? = MyApp.getInstance().resources.getString(R.string.lbl_biometric_id)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGoogleAuthenticator: String? =
      MyApp.getInstance().resources.getString(R.string.msg_google_authenticator)

)
