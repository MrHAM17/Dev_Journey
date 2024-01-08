package com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectpaymentmethodRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPayPal: String? = MyApp.getInstance().resources.getString(R.string.lbl_paypal)

)
