package com.jusplaymoviestreamingapp.app.modules.paymentmethod.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentMethodModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrderSummary: String? = MyApp.getInstance().resources.getString(R.string.lbl_order_summary)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPremiunWeekly: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_premiun_weekly)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIncludingTaxAnd: String? =
      MyApp.getInstance().resources.getString(R.string.msg_including_tax_and)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_50_week)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentMethod: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_method)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etInputsFiedValue: String? = null
)
