package com.banksydigitalbanking.app.modules.requestsent.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class RequestSentModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratsOrder: String? =
      MyApp.getInstance().resources.getString(R.string.msg_request_sent_successfully)

)
