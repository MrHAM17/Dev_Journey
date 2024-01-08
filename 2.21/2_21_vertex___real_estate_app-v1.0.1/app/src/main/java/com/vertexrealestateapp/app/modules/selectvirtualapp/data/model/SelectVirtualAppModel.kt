package com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectVirtualAppModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_virtual_app)

)
