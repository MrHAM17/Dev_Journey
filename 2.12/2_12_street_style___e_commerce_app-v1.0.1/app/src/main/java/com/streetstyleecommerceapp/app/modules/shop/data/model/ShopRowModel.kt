package com.streetstyleecommerceapp.app.modules.shop.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ShopRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSurgeShort: String? = MyApp.getInstance().resources.getString(R.string.lbl_surge_short)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_68_usd)

)
