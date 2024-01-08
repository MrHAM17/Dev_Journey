package com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class MessagesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_messages)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecently: String? = MyApp.getInstance().resources.getString(R.string.lbl_recently)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessages: String? = MyApp.getInstance().resources.getString(R.string.lbl_messages)

)
