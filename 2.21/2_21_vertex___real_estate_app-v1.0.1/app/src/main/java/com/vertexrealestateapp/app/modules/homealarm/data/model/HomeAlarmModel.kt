package com.vertexrealestateapp.app.modules.homealarm.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeAlarmModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLocation: String? = MyApp.getInstance().resources.getString(R.string.lbl_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStCelinaDelaware: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware)

)
