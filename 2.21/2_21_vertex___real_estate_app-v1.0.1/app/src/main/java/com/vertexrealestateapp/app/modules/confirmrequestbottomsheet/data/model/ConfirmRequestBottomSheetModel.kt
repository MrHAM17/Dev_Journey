package com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ConfirmRequestBottomSheetModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_agent_detail)
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_my_associate_rachel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_if_you_d_like_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.lbl_about_me)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_diana_richards_is)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_highlights)

)
