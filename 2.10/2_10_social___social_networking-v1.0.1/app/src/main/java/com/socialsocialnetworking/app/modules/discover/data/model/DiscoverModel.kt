package com.socialsocialnetworking.app.modules.discover.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class DiscoverModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRizalReynaldhi: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_rizal_reynaldhi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_35_minutes_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMeAndMyFriends: String? =
      MyApp.getInstance().resources.getString(R.string.msg_me_and_my_friends)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBeach: String? = MyApp.getInstance().resources.getString(R.string.lbl_beach)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOcean: String? = MyApp.getInstance().resources.getString(R.string.lbl_ocean)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHoliday: String? = MyApp.getInstance().resources.getString(R.string.lbl_holiday)

)
