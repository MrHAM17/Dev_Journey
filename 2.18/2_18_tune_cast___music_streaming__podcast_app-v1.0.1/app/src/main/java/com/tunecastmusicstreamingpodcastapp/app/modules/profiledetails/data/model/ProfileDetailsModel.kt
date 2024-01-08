package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJennyWilson: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNineThousandFourHundredEightyN: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_9_489)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowers: String? = MyApp.getInstance().resources.getString(R.string.lbl_followers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwoThousandFourHundredSeventyF: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_2_475)
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
