package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchresultplaylistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions1: String? = MyApp.getInstance().resources.getString(R.string.msg_ariana_grande)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions2: String? = MyApp.getInstance().resources.getString(R.string.msg_ariana_grande2)

)
