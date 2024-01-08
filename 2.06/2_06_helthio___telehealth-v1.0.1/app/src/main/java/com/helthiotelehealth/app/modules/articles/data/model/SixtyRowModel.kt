package com.helthiotelehealth.app.modules.articles.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class SixtyRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTheHealthiest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_25_healthiest)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJun: String? = MyApp.getInstance().resources.getString(R.string.lbl_jun_10_20212)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_5min_read2)

)
