package com.banksydigitalbanking.app.modules.bilpaymentsuccess.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class BilPaymentSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratsOrder: String? =
      MyApp.getInstance().resources.getString(R.string.msg_bill_paid_successfully)

)
