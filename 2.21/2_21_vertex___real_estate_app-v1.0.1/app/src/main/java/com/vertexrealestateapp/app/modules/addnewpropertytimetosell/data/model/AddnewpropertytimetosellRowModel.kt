package com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddnewpropertytimetosellRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_within_3_days)

)
