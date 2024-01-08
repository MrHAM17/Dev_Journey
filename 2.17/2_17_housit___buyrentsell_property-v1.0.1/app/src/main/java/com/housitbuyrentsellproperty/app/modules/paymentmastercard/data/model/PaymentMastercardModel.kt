package com.housitbuyrentsellproperty.app.modules.paymentmastercard.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentMastercardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg_1222_3443_9881_1222)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_11_05_2023)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etLockValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCvvValue: String? = null
)
