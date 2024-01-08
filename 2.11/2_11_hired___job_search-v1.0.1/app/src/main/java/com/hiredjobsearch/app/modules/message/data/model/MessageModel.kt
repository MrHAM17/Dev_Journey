package com.hiredjobsearch.app.modules.message.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class MessageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEstherHoward: String? = MyApp.getInstance().resources.getString(R.string.lbl_esther_howard)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_20)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWadeWarren: String? = MyApp.getInstance().resources.getString(R.string.lbl_wade_warren)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_20)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget1: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)

)
