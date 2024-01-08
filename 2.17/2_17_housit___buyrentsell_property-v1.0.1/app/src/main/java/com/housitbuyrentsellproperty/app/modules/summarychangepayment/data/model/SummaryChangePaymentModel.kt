package com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class SummaryChangePaymentModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChangePayment: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_payment)

)
