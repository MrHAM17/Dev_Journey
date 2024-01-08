package com.safebankmobilebankingapp.app.modules.minepage.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class MinePageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHelloAlexWelcome: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hello_alex_welcome)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentTransfer: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recent_transfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
