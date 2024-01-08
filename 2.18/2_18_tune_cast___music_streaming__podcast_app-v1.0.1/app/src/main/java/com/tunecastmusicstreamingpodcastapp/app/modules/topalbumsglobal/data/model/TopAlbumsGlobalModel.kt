package com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class TopAlbumsGlobalModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.msg_top_albums_global)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTopAlbumsGlobal: String? =
      MyApp.getInstance().resources.getString(R.string.msg_top_albums_global2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheMostPlayed: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_most_played)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_by_hearme_12_24_2022)

)
