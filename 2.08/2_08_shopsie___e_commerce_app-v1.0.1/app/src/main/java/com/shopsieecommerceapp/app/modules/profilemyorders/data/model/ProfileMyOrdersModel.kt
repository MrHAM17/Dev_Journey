package com.shopsieecommerceapp.app.modules.profilemyorders.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileMyOrdersModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrders: String? = MyApp.getInstance().resources.getString(R.string.lbl_orders)

)
