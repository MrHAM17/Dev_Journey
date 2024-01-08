package com.shopsieecommerceapp.app.modules.cart.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class CartModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShopsie: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopsie)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMYCART: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_cart)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSUBTOTAL: String? = MyApp.getInstance().resources.getString(R.string.lbl_sub_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_111_80)

)
