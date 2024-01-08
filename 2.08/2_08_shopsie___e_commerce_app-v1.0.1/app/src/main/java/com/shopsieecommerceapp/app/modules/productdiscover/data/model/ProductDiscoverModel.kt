package com.shopsieecommerceapp.app.modules.productdiscover.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProductDiscoverModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShopsie: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopsie)

)
