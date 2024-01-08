package com.jusplaymoviestreamingapp.app.modules.nohistory.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NoHistoryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNoHistory: String? = MyApp.getInstance().resources.getString(R.string.lbl_no_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThereAreCurrently: String? =
      MyApp.getInstance().resources.getString(R.string.msg_there_are_currently)

)
