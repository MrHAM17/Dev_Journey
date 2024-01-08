package com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class FollowArtistsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_follow_artists)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowYourFavorite: String? =
      MyApp.getInstance().resources.getString(R.string.msg_follow_your_favorite)

)
