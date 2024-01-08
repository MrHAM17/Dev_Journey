package com.tunecastmusicstreamingpodcastapp.app.modules.paymentsuccess.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratulations: String? =
      MyApp.getInstance().resources.getString(R.string.msg_congratulations)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_have_successfully)

)
