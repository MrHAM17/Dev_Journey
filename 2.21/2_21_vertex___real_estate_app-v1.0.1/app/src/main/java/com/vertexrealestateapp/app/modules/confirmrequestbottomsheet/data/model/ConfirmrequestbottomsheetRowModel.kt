package com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ConfirmrequestbottomsheetRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHomeClosed: String? = MyApp.getInstance().resources.getString(R.string.lbl_home_closed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwentyFive: String? = MyApp.getInstance().resources.getString(R.string.lbl_25)

)
