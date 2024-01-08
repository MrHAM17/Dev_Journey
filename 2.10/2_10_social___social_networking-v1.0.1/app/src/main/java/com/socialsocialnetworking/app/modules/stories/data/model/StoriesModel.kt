package com.socialsocialnetworking.app.modules.stories.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class StoriesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtStories: String? = MyApp.getInstance().resources.getString(R.string.lbl_stories)
  ,
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEvents: String? = MyApp.getInstance().resources.getString(R.string.lbl_events)

)
