package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PodcastsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPodcasts: String? = MyApp.getInstance().resources.getString(R.string.lbl_podcasts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularPodcasts: String? =
      MyApp.getInstance().resources.getString(R.string.msg_popular_podcasts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularArtists: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_popular_artists)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll1: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCategories: String? = MyApp.getInstance().resources.getString(R.string.lbl_categories)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll2: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
