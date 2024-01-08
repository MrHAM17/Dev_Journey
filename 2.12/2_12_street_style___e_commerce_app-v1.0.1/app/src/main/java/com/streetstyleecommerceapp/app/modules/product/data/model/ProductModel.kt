package com.streetstyleecommerceapp.app.modules.product.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProductModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBoyfriendTee: String? = MyApp.getInstance().resources.getString(R.string.lbl_boyfriend_tee)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtS: String? = MyApp.getInstance().resources.getString(R.string.lbl_s)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtM: String? = MyApp.getInstance().resources.getString(R.string.lbl_m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtL: String? = MyApp.getInstance().resources.getString(R.string.lbl_l)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtXL: String? = MyApp.getInstance().resources.getString(R.string.lbl_xl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEightySeven: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddToCart: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_to_cart)

)
