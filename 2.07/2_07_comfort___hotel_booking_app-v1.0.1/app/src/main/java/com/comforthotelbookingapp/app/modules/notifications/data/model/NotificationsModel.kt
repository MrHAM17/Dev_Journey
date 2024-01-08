package com.comforthotelbookingapp.app.modules.notifications.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtToday: String? = MyApp.getInstance().resources.getString(R.string.lbl_today)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentSuccessful: String? =
      MyApp.getInstance().resources.getString(R.string.msg_payment_successful)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLalunaHotelBooking: String? =
      MyApp.getInstance().resources.getString(R.string.msg_laluna_hotel_booking)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEWalletConnected: String? =
      MyApp.getInstance().resources.getString(R.string.msg_e_wallet_connected)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEWalletHasBeen: String? =
      MyApp.getInstance().resources.getString(R.string.msg_e_wallet_has_been)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYesterday: String? = MyApp.getInstance().resources.getString(R.string.lbl_yesterday)

)
