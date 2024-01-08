package com.ecommerce.app.modules.cart.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class CartModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtYourCart: String? = MyApp.getInstance().resources.getString(R.string.lbl_your_cart)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtItems: String? = MyApp.getInstance().resources.getString(R.string.lbl_items_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_598_86)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShipping: String? = MyApp.getInstance().resources.getString(R.string.lbl_shipping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtImportCharges: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_import_charges)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_128_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotalPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_total_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_766_86)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCuponCodeValue: String? = null
)
