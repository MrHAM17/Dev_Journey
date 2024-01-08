package com.shopsieecommerceapp.app.modules.mainlanding.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class PriceRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_43_90)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCottonBlackDress: String? =
      MyApp.getInstance().resources.getString(R.string.msg_cotton_black_dress)

)
