package com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class AlbumDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSweetener: String? = MyApp.getInstance().resources.getString(R.string.lbl_sweetener)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlbum: String? = MyApp.getInstance().resources.getString(R.string.lbl_album)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2018)
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
