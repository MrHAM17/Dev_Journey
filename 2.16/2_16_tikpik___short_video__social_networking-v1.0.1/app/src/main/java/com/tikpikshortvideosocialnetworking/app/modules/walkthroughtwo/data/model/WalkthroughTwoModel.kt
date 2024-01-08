package com.tikpikshortvideosocialnetworking.app.modules.walkthroughtwo.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class WalkthroughTwoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFindYourFriends: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_your_friends)

)
