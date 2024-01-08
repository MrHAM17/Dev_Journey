package com.ecommerce.app.modules.dashboard.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class MegasaleRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMSNikeAirMax: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ms_nike_air_max)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_299_43)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_534_33)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.lbl_24_off)

)
