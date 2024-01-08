package com.shopsieecommerceapp.app.modules.mainlanding.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ThirtytwoRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOuterwear: String? = MyApp.getInstance().resources.getString(R.string.lbl_outerwear)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRaincoatsSweaters: String? =
      MyApp.getInstance().resources.getString(R.string.msg_raincoats_sweaters)

)
