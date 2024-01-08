package com.socialsocialnetworking.app.modules.friends.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FriendsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFriends: String? = MyApp.getInstance().resources.getString(R.string.lbl_friends)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConnectToYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_connect_to_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecommeded: String? = MyApp.getInstance().resources.getString(R.string.lbl_recommeded)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRosalia: String? = MyApp.getInstance().resources.getString(R.string.lbl_rosalia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourEFriendsOn: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_e_friends_on)

)
