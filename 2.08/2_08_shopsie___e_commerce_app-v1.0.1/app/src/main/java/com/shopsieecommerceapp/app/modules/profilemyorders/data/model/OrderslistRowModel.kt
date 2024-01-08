package com.shopsieecommerceapp.app.modules.profilemyorders.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class OrderslistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShortsInYellow: String? =
      MyApp.getInstance().resources.getString(R.string.msg_shorts_in_yellow)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQty: String? = MyApp.getInstance().resources.getString(R.string.lbl_qty)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOne: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)

)
