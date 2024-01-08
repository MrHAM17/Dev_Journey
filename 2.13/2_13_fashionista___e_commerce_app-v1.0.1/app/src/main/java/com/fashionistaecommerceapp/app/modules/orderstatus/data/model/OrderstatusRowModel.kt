package com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class OrderstatusRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrderReceived: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_order_received)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_05_48_pm_7_june)

)
