package com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ListRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEmmettPerry: String? = MyApp.getInstance().resources.getString(R.string.lbl_emmett_perry)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJustmessagedyouCheck: String? =
      MyApp.getInstance().resources.getString(R.string.msg_just_messaged_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_mins_ago)

)
