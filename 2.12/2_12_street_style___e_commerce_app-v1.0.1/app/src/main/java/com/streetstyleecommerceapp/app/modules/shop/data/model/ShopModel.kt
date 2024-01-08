package com.streetstyleecommerceapp.app.modules.shop.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ShopModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShop: String? = MyApp.getInstance().resources.getString(R.string.lbl_shop)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHollywoodHairstyles: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hollywood_hairstyles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSurgeShort: String? = MyApp.getInstance().resources.getString(R.string.lbl_surge_short)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_68_usd)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSurgeShort1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sweat_jogger_french)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_68_usd)

)
