package com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultsTopModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUsers: String? = MyApp.getInstance().resources.getString(R.string.lbl_users)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVideos: String? = MyApp.getInstance().resources.getString(R.string.lbl_videos)

)
