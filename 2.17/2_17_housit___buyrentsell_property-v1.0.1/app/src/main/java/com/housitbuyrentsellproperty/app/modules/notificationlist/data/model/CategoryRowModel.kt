package com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class CategoryRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_all)

)
