package com.vertexrealestateapp.app.modules.homesearch.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomesearchRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMightyCincoFamily: String? =
      MyApp.getInstance().resources.getString(R.string.msg_mighty_cinco_family)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStillwaterRd: String? =
      MyApp.getInstance().resources.getString(R.string.msg_360_stillwater_rd2)

)
