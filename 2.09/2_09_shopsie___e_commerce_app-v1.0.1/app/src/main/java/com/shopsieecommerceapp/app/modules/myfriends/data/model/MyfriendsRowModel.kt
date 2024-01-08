package com.shopsieecommerceapp.app.modules.myfriends.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MyfriendsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_logan_nasser)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFullname: String? = MyApp.getInstance().resources.getString(R.string.lbl_louisaingram)

)
