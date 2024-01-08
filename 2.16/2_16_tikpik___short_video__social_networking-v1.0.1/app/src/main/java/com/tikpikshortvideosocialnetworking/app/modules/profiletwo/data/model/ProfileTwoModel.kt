package com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileTwoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAllSounds: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAisnley: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_aisnley)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDesignerVideographer: String? =
      MyApp.getInstance().resources.getString(R.string.msg_designer_videographer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwoHundredFortySeven: String? = MyApp.getInstance().resources.getString(R.string.lbl_247)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPosts: String? = MyApp.getInstance().resources.getString(R.string.lbl_posts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtK: String? = MyApp.getInstance().resources.getString(R.string.lbl_368k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowers: String? = MyApp.getInstance().resources.getString(R.string.lbl_followers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThreeHundredSeventyFour: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_374)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowing: String? = MyApp.getInstance().resources.getString(R.string.lbl_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_7m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikes: String? = MyApp.getInstance().resources.getString(R.string.lbl_likes)

)
