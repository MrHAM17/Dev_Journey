package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class FollowingRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistName: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wigington)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowersCounter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_2_798_followers)

)
