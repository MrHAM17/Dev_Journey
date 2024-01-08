package com.streetstyleecommerceapp.app.modules.myorder.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MyorderRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtVERTLUNEBoyfriend: String? =
      MyApp.getInstance().resources.getString(R.string.msg_vertlune_boyfriend)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYellowSizeCounter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_yellow_size_8)
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
