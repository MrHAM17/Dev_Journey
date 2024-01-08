package com.shopsieecommerceapp.app.modules.messagestabcontainer.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MessagesTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtScreenTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtScreenTitle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_messages)

)
