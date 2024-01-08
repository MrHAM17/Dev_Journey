package com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FindFriendsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_find_friends)

)
