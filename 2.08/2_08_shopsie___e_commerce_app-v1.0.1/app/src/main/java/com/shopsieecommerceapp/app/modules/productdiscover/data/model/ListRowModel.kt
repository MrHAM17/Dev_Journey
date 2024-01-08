package com.shopsieecommerceapp.app.modules.productdiscover.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ListRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWomenBlueSkinny: String? =
      MyApp.getInstance().resources.getString(R.string.msg_women_blue_skinny)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_13_99)

)
