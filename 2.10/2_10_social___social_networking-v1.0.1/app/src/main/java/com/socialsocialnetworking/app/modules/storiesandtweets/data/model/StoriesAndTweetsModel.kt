package com.socialsocialnetworking.app.modules.storiesandtweets.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class StoriesAndTweetsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtStories: String? = MyApp.getInstance().resources.getString(R.string.lbl_stories)

)
