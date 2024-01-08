package com.shopsieecommerceapp.app.modules.itemproductdiscoverdrawer.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class DrawerItemProductDiscoverDrawerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCart: String? = MyApp.getInstance().resources.getString(R.string.lbl_cart)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClothing: String? = MyApp.getInstance().resources.getString(R.string.lbl_clothing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShoes: String? = MyApp.getInstance().resources.getString(R.string.lbl_shoes)

)
