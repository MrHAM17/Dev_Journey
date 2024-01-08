package com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchTypeKeywordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentSearches: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recent_searches)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClearAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_clear_all)

)
