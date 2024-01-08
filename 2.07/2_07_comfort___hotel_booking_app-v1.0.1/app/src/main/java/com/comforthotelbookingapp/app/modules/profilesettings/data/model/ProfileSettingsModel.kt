package com.comforthotelbookingapp.app.modules.profilesettings.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileSettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComfort: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDanielAustin: String? = MyApp.getInstance().resources.getString(R.string.lbl_daniel_austin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_uder_domain_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEditProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPayment: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurity: String? = MyApp.getInstance().resources.getString(R.string.lbl_security)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHelp: String? = MyApp.getInstance().resources.getString(R.string.lbl_help)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDarkTheme: String? = MyApp.getInstance().resources.getString(R.string.lbl_dark_theme)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLogout: String? = MyApp.getInstance().resources.getString(R.string.lbl_logout)

)
