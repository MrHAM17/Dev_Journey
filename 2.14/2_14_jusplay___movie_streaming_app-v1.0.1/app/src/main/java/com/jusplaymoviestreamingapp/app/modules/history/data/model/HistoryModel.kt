package com.jusplaymoviestreamingapp.app.modules.history.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HistoryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_history)

)
