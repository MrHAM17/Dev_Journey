package com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SongDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtStarboy: String? = MyApp.getInstance().resources.getString(R.string.lbl_starboy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheWeekndDaft: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_weeknd_daft)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInfo: String? = MyApp.getInstance().resources.getString(R.string.lbl_song)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_03_50_mins)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMoreLikeThis: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_more_like_this)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
