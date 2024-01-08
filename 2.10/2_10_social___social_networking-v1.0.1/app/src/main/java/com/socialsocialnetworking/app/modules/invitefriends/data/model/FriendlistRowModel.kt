package com.socialsocialnetworking.app.modules.invitefriends.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FriendlistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKevinAllsrub: String? = MyApp.getInstance().resources.getString(R.string.lbl_kevin_allsrub)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourEFriendsOn: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_e_friends_on)

)
