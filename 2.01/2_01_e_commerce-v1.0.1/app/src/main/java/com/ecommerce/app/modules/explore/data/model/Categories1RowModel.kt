package com.ecommerce.app.modules.explore.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class Categories1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTShirt: String? = MyApp.getInstance().resources.getString(R.string.lbl_t_shirt)

)
