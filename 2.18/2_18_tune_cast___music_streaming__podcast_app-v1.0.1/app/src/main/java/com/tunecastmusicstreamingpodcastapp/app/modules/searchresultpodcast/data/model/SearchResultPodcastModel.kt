package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultPodcastModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPodcastsShows: String? =
      MyApp.getInstance().resources.getString(R.string.msg_podcasts_shows)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEpisodes: String? = MyApp.getInstance().resources.getString(R.string.lbl_episodes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll1: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
