package com.ecommerce.app.modules.superflashsale.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class SuperFlashSaleModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSuperFlashSale: String? =
      MyApp.getInstance().resources.getString(R.string.msg_super_flash_sale)

)
