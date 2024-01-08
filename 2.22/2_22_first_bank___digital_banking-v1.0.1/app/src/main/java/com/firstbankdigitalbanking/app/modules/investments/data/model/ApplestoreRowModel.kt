package com.firstbankdigitalbanking.app.modules.investments.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ApplestoreRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAppleStore: String? = MyApp.getInstance().resources.getString(R.string.lbl_apple_store)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEcommerceMarketplace: String? =
      MyApp.getInstance().resources.getString(R.string.msg_e_commerce_marketplace)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSixteen: String? = MyApp.getInstance().resources.getString(R.string.lbl_16)

)
