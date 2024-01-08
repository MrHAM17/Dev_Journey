package com.tikpikshortvideosocialnetworking.app.modules.profileone.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSarahWilona: String? = MyApp.getInstance().resources.getString(R.string.lbl_sarah_wilona2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDancerSinger: String? = MyApp.getInstance().resources.getString(R.string.lbl_dancer_singer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEightHundredTwentyThree: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_823)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPosts: String? = MyApp.getInstance().resources.getString(R.string.lbl_posts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_7m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowers: String? = MyApp.getInstance().resources.getString(R.string.lbl_followers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNineHundredTwentyFive: String? = MyApp.getInstance().resources.getString(R.string.lbl_925)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowing: String? = MyApp.getInstance().resources.getString(R.string.lbl_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_39m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikes: String? = MyApp.getInstance().resources.getString(R.string.lbl_likes)

)
