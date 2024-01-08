package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchresultalbumRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions: String? = MyApp.getInstance().resources.getString(R.string.lbl_sweetener)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2018)

)
