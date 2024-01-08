package com.socialsocialnetworking.app.modules.messages.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class Stories1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRoy: String? = MyApp.getInstance().resources.getString(R.string.lbl_roy)

)
