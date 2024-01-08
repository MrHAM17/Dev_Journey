package com.comforthotelbookingapp.app.modules.security.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SecurityModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFaceID: String? = MyApp.getInstance().resources.getString(R.string.lbl_face_id)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRememberMe: String? = MyApp.getInstance().resources.getString(R.string.lbl_remember_me)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTouchID: String? = MyApp.getInstance().resources.getString(R.string.lbl_touch_id)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGoogleAuthenticator: String? =
      MyApp.getInstance().resources.getString(R.string.msg_google_authenticator)

)
