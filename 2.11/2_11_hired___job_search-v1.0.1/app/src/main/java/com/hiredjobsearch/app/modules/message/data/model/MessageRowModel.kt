package com.hiredjobsearch.app.modules.message.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class MessageRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChanceSeptimus: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_chance_septimus)
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

)
