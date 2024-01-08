package com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentmethodRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPayPal: String? = MyApp.getInstance().resources.getString(R.string.lbl_paypal)

)
