package com.tikpikshortvideosocialnetworking.app.modules.sendmessage.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SendMessageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJennyWilson: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActressSinger: String? =
      MyApp.getInstance().resources.getString(R.string.msg_actress_singer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_jenny_good_morning)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_01)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? = MyApp.getInstance().resources.getString(R.string.msg_i_m_your_fan_i)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_01)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etMessageValue: String? = null
)
