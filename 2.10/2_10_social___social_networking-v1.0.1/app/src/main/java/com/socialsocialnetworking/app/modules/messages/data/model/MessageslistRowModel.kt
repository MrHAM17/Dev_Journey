package com.socialsocialnetworking.app.modules.messages.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class MessageslistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRichardAlves: String? = MyApp.getInstance().resources.getString(R.string.lbl_richard_alves)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHeyBroWhereAre: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hey_bro_where_are)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_00_am)

)
