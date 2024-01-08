package com.hiredjobsearch.app.modules.chat.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ChatModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_chance_septimus)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_15_42_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_15_42_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.lbl_15_42_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etMessageValue: String? = null
)
