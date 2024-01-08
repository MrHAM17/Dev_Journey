package com.fashionistaecommerceapp.app.modules.search.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_recent_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_items_that_you_may)

)
