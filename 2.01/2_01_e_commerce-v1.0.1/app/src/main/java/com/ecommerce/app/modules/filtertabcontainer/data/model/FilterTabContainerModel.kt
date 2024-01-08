package com.ecommerce.app.modules.filtertabcontainer.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class FilterTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFilterSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_filter_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPriceRange: String? = MyApp.getInstance().resources.getString(R.string.lbl_price_range)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCondition: String? = MyApp.getInstance().resources.getString(R.string.lbl_condition)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPriceValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPrice1Value: String? = null
)
