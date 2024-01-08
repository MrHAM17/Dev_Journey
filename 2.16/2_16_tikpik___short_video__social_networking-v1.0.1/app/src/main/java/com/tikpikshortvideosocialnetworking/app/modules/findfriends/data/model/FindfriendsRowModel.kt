package com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FindfriendsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtInviteFriends: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_invite_friends)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStayConnectedWith: String? =
      MyApp.getInstance().resources.getString(R.string.msg_stay_connected_with)

)
