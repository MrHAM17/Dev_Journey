package com.socialsocialnetworking.app.modules.search.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SearchModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecently: String? = MyApp.getInstance().resources.getString(R.string.lbl_recently)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClearAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_clear_all)

)
