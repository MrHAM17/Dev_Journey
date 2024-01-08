package com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class NinetyfiveRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtistName: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowersCounter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_9_489_followers)

)
