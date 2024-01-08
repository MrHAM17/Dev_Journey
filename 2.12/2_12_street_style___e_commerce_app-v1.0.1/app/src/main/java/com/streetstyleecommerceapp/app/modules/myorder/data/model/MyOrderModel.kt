package com.streetstyleecommerceapp.app.modules.myorder.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MyOrderModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMyOrder: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_order)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_58)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtX: String? = MyApp.getInstance().resources.getString(R.string.lbl_1x)

)
