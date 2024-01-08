package com.tikpikshortvideosocialnetworking.app.modules.profiletabcontainer.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJennyWilson: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActressSinger: String? =
      MyApp.getInstance().resources.getString(R.string.msg_actress_singer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSixHundredSeventyNine: String? = MyApp.getInstance().resources.getString(R.string.lbl_679)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPosts: String? = MyApp.getInstance().resources.getString(R.string.lbl_posts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_6m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowers: String? = MyApp.getInstance().resources.getString(R.string.lbl_followers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSixHundredFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_648)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowing: String? = MyApp.getInstance().resources.getString(R.string.lbl_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikes: String? = MyApp.getInstance().resources.getString(R.string.lbl_likes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_27m)

)
