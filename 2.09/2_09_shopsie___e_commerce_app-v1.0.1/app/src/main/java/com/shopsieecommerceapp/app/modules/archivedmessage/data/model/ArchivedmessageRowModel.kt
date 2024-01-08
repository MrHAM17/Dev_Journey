package com.shopsieecommerceapp.app.modules.archivedmessage.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ArchivedmessageRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMore: String? = MyApp.getInstance().resources.getString(R.string.lbl_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_close_friends)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessage: String? =
      MyApp.getInstance().resources.getString(R.string.msg_thank_you_for_sharing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_03pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifications: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)

)
