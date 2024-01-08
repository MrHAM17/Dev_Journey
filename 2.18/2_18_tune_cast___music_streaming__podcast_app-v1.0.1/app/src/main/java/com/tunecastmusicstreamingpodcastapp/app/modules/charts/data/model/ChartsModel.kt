package com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChartsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_charts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeeklyAlbumCharts1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_weekly_album_charts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeeklyAlbumCharts1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_weekly_album_charts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeeklySongCharts: String? =
      MyApp.getInstance().resources.getString(R.string.msg_weekly_song_charts)

)
