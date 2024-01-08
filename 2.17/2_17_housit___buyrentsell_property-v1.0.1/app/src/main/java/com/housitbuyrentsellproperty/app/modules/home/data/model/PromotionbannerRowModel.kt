package com.housitbuyrentsellproperty.app.modules.home.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PromotionbannerRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHalloweenSale: String? =
      MyApp.getInstance().resources.getString(R.string.msg_halloween_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.msg_all_discount_up)

)
