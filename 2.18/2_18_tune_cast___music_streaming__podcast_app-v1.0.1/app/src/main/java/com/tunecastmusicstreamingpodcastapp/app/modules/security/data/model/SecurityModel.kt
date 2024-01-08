package com.tunecastmusicstreamingpodcastapp.app.modules.security.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
