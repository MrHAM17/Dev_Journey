package com.shopsieecommerceapp.app.modules.mainlanding.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class FrameRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWomenBlueSkinny: String? =
      MyApp.getInstance().resources.getString(R.string.msg_olive_plain_dress)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_13_99)

)
