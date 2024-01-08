package com.ecommerce.app.modules.dashboard.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ArrightRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtManShirt: String? = MyApp.getInstance().resources.getString(R.string.lbl_man_shirt)

)
