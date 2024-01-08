package com.musicplayer.app.modules.homepage.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class HomePageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_dashboard)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListenToMusic: String? =
      MyApp.getInstance().resources.getString(R.string.msg_listen_to_music_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.msg_free_for_3_months)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewReleases: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_releases)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViewAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_view_all)

)
