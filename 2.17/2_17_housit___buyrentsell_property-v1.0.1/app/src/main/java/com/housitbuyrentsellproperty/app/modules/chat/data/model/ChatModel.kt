package com.housitbuyrentsellproperty.app.modules.chat.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ChatModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMilano: String? = MyApp.getInstance().resources.getString(R.string.lbl_milano)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOnline: String? = MyApp.getInstance().resources.getString(R.string.lbl_online)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkyDandelionsApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sky_dandelions_apartment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_45)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_46)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etDescriptionValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDescription1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFormChatValue: String? = null
)
