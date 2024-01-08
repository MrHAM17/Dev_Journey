package com.ecommerce.app.modules.filter.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class FilterModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyingFormat: String? = MyApp.getInstance().resources.getString(R.string.lbl_buying_format)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtItemLocation: String? = MyApp.getInstance().resources.getString(R.string.lbl_item_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShowOnly: String? = MyApp.getInstance().resources.getString(R.string.lbl_show_only)

)
