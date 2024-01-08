package com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGoodMorning: String? = MyApp.getInstance().resources.getString(R.string.lbl_good_morning)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsley: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingNow: String? = MyApp.getInstance().resources.getString(R.string.lbl_trending_now)
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
  var txtTopCharts: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_charts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll2: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
