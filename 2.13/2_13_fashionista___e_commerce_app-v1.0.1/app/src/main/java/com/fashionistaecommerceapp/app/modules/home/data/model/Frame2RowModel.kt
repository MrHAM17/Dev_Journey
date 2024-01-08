package com.fashionistaecommerceapp.app.modules.home.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame2RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCasualJeansShoes: String? =
      MyApp.getInstance().resources.getString(R.string.msg_casual_jeans_shoes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_165_00)

)
