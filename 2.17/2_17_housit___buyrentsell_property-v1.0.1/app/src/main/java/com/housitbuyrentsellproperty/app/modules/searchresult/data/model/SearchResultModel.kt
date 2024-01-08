package com.housitbuyrentsellproperty.app.modules.searchresult.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_search_results)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFound: String? = MyApp.getInstance().resources.getString(R.string.lbl_found)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEstates: String? = MyApp.getInstance().resources.getString(R.string.lbl_estates)

)
