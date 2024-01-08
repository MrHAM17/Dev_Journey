package com.banksydigitalbanking.app.modules.paymentsuccess.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratsOrder: String? =
      MyApp.getInstance().resources.getString(R.string.msg_payment_sent_successfully)

)
