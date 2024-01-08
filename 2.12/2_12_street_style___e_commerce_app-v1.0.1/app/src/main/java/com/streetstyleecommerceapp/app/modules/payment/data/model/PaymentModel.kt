package com.streetstyleecommerceapp.app.modules.payment.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPayment: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyCards: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_cards)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentOption: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_option)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_116)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddToCart: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etApplePayValue: String? = null
)
