package com.safebankmobilebankingapp.app.modules.transferrequest.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class TransferrequestRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtZanderWiza: String? = MyApp.getInstance().resources.getString(R.string.lbl_zander_wiza)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUIUXDesigner: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_ui_ux_designer)

)
