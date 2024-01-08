package com.safebankmobilebankingapp.app.modules.history.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HistoryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_today_25_june)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYesterday: String? = MyApp.getInstance().resources.getString(R.string.lbl_yesterday)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJune: String? = MyApp.getInstance().resources.getString(R.string.lbl_20_june_2022)

)
