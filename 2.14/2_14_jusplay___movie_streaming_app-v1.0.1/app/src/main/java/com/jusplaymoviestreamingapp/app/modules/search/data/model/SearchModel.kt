package com.jusplaymoviestreamingapp.app.modules.search.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentSearches: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recent_searches)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPopular: String? = MyApp.getInstance().resources.getString(R.string.lbl_popular)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecommendations: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recommendations)

)
