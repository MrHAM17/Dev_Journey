package com.shopsieecommerceapp.app.modules.search.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername3: String? = MyApp.getInstance().resources.getString(R.string.lbl_edward_ford)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername4: String? = MyApp.getInstance().resources.getString(R.string.lbl_edward_ford)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_edward_ford)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername1: String? = MyApp.getInstance().resources.getString(R.string.lbl_edward_ford)

)
