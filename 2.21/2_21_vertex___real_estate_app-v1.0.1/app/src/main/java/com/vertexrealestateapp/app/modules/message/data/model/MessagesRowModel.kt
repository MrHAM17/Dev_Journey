package com.vertexrealestateapp.app.modules.message.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class MessagesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWadeWarren: String? = MyApp.getInstance().resources.getString(R.string.lbl_wade_warren)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessage: String? = MyApp.getInstance().resources.getString(R.string.msg_oh_hello_willam)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_23_15)

)
