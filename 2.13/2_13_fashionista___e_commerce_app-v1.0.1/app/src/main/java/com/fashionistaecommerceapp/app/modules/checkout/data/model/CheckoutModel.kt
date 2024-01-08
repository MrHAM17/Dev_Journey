package com.fashionistaecommerceapp.app.modules.checkout.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class CheckoutModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_checkout)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDeliveryAddress: String? =
      MyApp.getInstance().resources.getString(R.string.msg_delivery_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddress: String? = MyApp.getInstance().resources.getString(R.string.lbl_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNSWAustralia: String? = MyApp.getInstance().resources.getString(R.string.lbl_nsw_australia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentMathod: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_mathod)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_144_94)

)
