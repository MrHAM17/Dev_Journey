package com.ecommerce.app.modules.searchresultnodatafound.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultNoDataFoundModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtResultCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_0_result)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProductNotFound: String? =
      MyApp.getInstance().resources.getString(R.string.msg_product_not_found)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThankYouForShopping: String? =
      MyApp.getInstance().resources.getString(R.string.msg_thank_you_for_shopping)

)
