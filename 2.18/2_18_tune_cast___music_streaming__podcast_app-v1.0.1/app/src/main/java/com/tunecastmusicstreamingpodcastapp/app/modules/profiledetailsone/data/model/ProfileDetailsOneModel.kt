package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileDetailsOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfilesName: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_739)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowers: String? = MyApp.getInstance().resources.getString(R.string.lbl_followers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero1: String? = MyApp.getInstance().resources.getString(R.string.lbl_347)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowing: String? = MyApp.getInstance().resources.getString(R.string.lbl_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPlaylists: String? = MyApp.getInstance().resources.getString(R.string.lbl_playlists)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
