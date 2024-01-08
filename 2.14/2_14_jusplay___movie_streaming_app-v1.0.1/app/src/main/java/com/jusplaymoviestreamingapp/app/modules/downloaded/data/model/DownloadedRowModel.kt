package com.jusplaymoviestreamingapp.app.modules.downloaded.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class DownloadedRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCaptainAmerica: String? =
      MyApp.getInstance().resources.getString(R.string.msg_captain_america)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActionAdventure: String? =
      MyApp.getInstance().resources.getString(R.string.msg_action_adventure)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwentyThousandFiveHundredThirt: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_2_05_32)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFilesize: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_2gb)

)
