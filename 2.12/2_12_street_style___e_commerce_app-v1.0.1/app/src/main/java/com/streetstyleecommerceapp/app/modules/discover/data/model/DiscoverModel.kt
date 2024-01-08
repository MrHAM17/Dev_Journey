package com.streetstyleecommerceapp.app.modules.discover.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class DiscoverModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscover: String? = MyApp.getInstance().resources.getString(R.string.lbl_discover)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscoverYourProduc: String? =
      MyApp.getInstance().resources.getString(R.string.msg_discover_your_products)

)
