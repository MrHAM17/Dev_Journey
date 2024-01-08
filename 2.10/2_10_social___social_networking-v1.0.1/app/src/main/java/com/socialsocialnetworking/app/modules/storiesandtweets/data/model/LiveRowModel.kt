package com.socialsocialnetworking.app.modules.storiesandtweets.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class LiveRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPost: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_post)

)
