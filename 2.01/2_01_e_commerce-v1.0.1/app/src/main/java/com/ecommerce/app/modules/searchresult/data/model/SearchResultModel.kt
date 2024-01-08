package com.ecommerce.app.modules.searchresult.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtResultCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_145_result)

)
