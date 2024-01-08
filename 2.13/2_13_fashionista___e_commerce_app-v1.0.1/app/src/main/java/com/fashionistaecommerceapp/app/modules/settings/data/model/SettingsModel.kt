package com.fashionistaecommerceapp.app.modules.settings.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnneChristion: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_anne_christion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPremiumUser: String? = MyApp.getInstance().resources.getString(R.string.lbl_premium_user)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
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
  var txtTrackingOrder: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_tracking_order)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrderStatus: String? = MyApp.getInstance().resources.getString(R.string.lbl_order_status)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFAQs: String? = MyApp.getInstance().resources.getString(R.string.lbl_faqs)

)
