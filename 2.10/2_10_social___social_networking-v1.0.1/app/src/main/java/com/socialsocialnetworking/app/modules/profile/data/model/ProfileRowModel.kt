package com.socialsocialnetworking.app.modules.profile.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRosalia: String? = MyApp.getInstance().resources.getString(R.string.lbl_rosalia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_35_minutes_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMostPeopleNever: String? =
      MyApp.getInstance().resources.getString(R.string.msg_most_people_never)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2200)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEightHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_800)

)
