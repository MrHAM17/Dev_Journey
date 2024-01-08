package com.blogapp.app.modules.interestspeople.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class InterestspeopleRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMorePeopleToFollow: String? =
      MyApp.getInstance().resources.getString(R.string.msg_more_people_to_follow)

)
