package com.jusplaymoviestreamingapp.app.modules.searchresult.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtResultsForComedy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_results_for_comedy)

)
