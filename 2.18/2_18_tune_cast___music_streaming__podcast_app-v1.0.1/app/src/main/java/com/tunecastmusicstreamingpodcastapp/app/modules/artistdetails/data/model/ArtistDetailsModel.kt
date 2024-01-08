package com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ArtistDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? =
      MyApp.getInstance().resources.getString(R.string.msg_55_278_829_monthly)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularSongs: String? = MyApp.getInstance().resources.getString(R.string.lbl_popular_songs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
