package com.jusplaymoviestreamingapp.app.modules.paymentmethod.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentmethodlistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGooglePay: String? = MyApp.getInstance().resources.getString(R.string.lbl_google_pay)

)
