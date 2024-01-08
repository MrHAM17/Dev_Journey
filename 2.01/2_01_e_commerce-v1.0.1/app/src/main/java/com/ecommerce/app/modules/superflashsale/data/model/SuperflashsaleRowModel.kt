package com.ecommerce.app.modules.superflashsale.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class SuperflashsaleRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.msg_super_flash_sale_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClock: String? = MyApp.getInstance().resources.getString(R.string.lbl_08)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMinutes: String? = MyApp.getInstance().resources.getString(R.string.lbl_34)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecounds: String? = MyApp.getInstance().resources.getString(R.string.lbl_52)

)
