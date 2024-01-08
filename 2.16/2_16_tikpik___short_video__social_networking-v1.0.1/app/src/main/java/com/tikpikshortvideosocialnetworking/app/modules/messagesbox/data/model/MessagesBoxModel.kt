package com.tikpikshortvideosocialnetworking.app.modules.messagesbox.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class MessagesBoxModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_theresa_varnes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_theresa_good)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_002)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_are_you_today_we)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_002)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_morning_too)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_002)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_yes_you_re_right_i)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime3: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_002)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etMessageValue: String? = null
)
