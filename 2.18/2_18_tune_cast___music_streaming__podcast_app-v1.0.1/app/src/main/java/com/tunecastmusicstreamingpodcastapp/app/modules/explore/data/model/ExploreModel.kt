package com.tunecastmusicstreamingpodcastapp.app.modules.explore.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtExplore: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBrowseAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_browse_all)

)
