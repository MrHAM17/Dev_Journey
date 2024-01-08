package com.fashionistaecommerceapp.app.modules.mycart.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MyCartModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularItems: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_cart)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPromoCodeorVourchers: String? =
      MyApp.getInstance().resources.getString(R.string.msg_promo_code_or_vourchers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSubtotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_subtotal)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_134_94)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFeeDelivery: String? = MyApp.getInstance().resources.getString(R.string.lbl_fee_delivery)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_10)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_144_94)

)
