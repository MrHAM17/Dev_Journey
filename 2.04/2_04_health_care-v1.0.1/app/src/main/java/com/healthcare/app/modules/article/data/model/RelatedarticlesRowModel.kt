package com.healthcare.app.modules.article.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class RelatedarticlesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTheHealthiest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_25_healthiest)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_jun_10_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_5min_read)

)
