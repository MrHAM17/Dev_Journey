package com.ecommerce.app.modules.order.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class OrderModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrder: String? = MyApp.getInstance().resources.getString(R.string.lbl_order)

)
