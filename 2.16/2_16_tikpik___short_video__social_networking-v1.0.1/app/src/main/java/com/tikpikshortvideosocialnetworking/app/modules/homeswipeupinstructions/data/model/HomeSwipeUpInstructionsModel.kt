package com.tikpikshortvideosocialnetworking.app.modules.homeswipeupinstructions.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class HomeSwipeUpInstructionsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? = MyApp.getInstance().resources.getString(R.string.msg_actress_singer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? = MyApp.getInstance().resources.getString(R.string.msg_hi_everyone_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFavoriteGirlBy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_favorite_girl_by)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtK: String? = MyApp.getInstance().resources.getString(R.string.lbl_225_9k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtK1: String? = MyApp.getInstance().resources.getString(R.string.lbl_24_8k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtK2: String? = MyApp.getInstance().resources.getString(R.string.lbl_15_6k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtK3: String? = MyApp.getInstance().resources.getString(R.string.lbl_20_7k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSwipeUpToSee: String? =
      MyApp.getInstance().resources.getString(R.string.msg_swipe_up_to_see)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscover: String? = MyApp.getInstance().resources.getString(R.string.lbl_discover)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInbox: String? = MyApp.getInstance().resources.getString(R.string.lbl_inbox)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
