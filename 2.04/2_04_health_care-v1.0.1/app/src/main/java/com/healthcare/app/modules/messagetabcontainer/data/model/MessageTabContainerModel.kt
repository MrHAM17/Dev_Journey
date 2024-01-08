package com.healthcare.app.modules.messagetabcontainer.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class MessageTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSchedule: String? = MyApp.getInstance().resources.getString(R.string.lbl_messages)

)
