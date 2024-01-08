package com.blogapp.app.modules.intereststopics.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class InterestsTopicsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArtEntertainment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_arts_entertainment)

)
