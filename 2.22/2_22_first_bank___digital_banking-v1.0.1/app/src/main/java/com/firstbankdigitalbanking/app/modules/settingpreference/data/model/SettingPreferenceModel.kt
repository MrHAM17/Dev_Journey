package com.firstbankdigitalbanking.app.modules.settingpreference.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class SettingPreferenceModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType: String? = MyApp.getInstance().resources.getString(R.string.lbl_currency)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType1: String? = MyApp.getInstance().resources.getString(R.string.lbl_time_zone)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtISendOrReceive: String? =
      MyApp.getInstance().resources.getString(R.string.msg_i_send_or_receive)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIReceiveMerchant: String? =
      MyApp.getInstance().resources.getString(R.string.msg_i_receive_merchant)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTherearerecommendationformyacc: String? =
      MyApp.getInstance().resources.getString(R.string.msg_there_are_recommendation)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etClassicValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etTimeValue: String? = null
)
