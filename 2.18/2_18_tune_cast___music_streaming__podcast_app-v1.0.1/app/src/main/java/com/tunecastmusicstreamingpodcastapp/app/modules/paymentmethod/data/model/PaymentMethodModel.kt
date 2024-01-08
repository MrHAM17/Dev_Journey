package com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentMethodModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectThePayment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_the_payment)

)
