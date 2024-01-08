package com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SearchTypeKeywordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecent: String? = MyApp.getInstance().resources.getString(R.string.lbl_recent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClearAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_clear_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSuggestedSearches: String? =
      MyApp.getInstance().resources.getString(R.string.msg_suggested_searches)

)
