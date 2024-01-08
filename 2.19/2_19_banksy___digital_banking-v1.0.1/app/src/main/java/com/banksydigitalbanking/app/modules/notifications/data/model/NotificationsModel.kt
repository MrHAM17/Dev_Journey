package com.banksydigitalbanking.app.modules.notifications.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_money_receive)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_if_anyone_sent_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_card_activation)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_if_card_active)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_update_feature)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_if_any_new_update)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales3: String? = MyApp.getInstance().resources.getString(R.string.lbl_cash_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_if_any_cash_in_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales4: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_money_request)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou4: String? =
      MyApp.getInstance().resources.getString(R.string.msg_if_anyone_sent_you2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales5: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_money_trasfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou5: String? =
      MyApp.getInstance().resources.getString(R.string.msg_if_you_sent_money)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales6: String? =
      MyApp.getInstance().resources.getString(R.string.msg_number_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou6: String? =
      MyApp.getInstance().resources.getString(R.string.msg_send_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountsSales7: String? =
      MyApp.getInstance().resources.getString(R.string.msg_email_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyTheStuffYou7: String? =
      MyApp.getInstance().resources.getString(R.string.msg_send_notification2)

)
