package com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchtypekeywordRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)

)
