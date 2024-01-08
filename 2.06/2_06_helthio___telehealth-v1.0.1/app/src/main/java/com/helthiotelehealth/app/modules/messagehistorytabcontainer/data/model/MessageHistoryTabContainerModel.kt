package com.helthiotelehealth.app.modules.messagehistorytabcontainer.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class MessageHistoryTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMessage: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)

)
