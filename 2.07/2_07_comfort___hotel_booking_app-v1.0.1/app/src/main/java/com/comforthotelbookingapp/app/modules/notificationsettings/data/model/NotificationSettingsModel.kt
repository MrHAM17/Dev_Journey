package com.comforthotelbookingapp.app.modules.notificationsettings.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationSettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGeneralNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_general_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSound: String? = MyApp.getInstance().resources.getString(R.string.lbl_sound)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVibrate: String? = MyApp.getInstance().resources.getString(R.string.lbl_vibrate)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAppUpdates: String? = MyApp.getInstance().resources.getString(R.string.lbl_app_updates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewServiceAvailable: String? =
      MyApp.getInstance().resources.getString(R.string.msg_new_service_available)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewTipsAvailable: String? =
      MyApp.getInstance().resources.getString(R.string.msg_new_tips_available)

)
