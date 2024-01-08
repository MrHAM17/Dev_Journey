package com.vertexrealestateapp.app.modules.confirmrequest.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ConfirmRequestModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRequestReceived: String? =
      MyApp.getInstance().resources.getString(R.string.msg_request_received)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_we_re_checking_if)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAssociateCapital: String? =
      MyApp.getInstance().resources.getString(R.string.msg_associate_capital)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLeslieAlexander: String? =
      MyApp.getInstance().resources.getString(R.string.msg_leslie_alexander)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRichCapitalPropertiesLLC: String? =
      MyApp.getInstance().resources.getString(R.string.msg_rich_capital_properties)

)
