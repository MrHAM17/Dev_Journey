package com.banksydigitalbanking.app.modules.history.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class HistoryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_histroy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleGoesHere: String? = MyApp.getInstance().resources.getString(R.string.lbl_all_time)

)
