package com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class NewReleasesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_new_releases)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheBestNewReleases: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_best_new_releases)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewAlbumsSingle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_new_albums_single)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions: String? = MyApp.getInstance().resources.getString(R.string.lbl_pain)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande: String? = MyApp.getInstance().resources.getString(R.string.lbl_ryan_jones)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions1: String? = MyApp.getInstance().resources.getString(R.string.lbl_shades_of_love)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_ania_szarmach)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions2: String? = MyApp.getInstance().resources.getString(R.string.lbl_pain)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande2: String? = MyApp.getInstance().resources.getString(R.string.lbl_ryan_jones)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPositions3: String? = MyApp.getInstance().resources.getString(R.string.lbl_shades_of_love)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArianaGrande3: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_ania_szarmach)

)
