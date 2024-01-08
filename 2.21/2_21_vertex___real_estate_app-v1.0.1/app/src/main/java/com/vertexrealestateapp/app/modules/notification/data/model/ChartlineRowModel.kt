package com.vertexrealestateapp.app.modules.notification.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChartlineRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTheHouseWithThe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_house_with_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThereAreSeveral: String? =
      MyApp.getInstance().resources.getString(R.string.msg_there_are_several)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_days)

)
