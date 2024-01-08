package com.shopsieecommerceapp.app.modules.productsearch.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProductsearchRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLongSleeveTShirt: String? =
      MyApp.getInstance().resources.getString(R.string.msg_long_sleeve_t_shirt)

)
