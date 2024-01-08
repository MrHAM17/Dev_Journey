package com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfound.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchNotFoundModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotFound: String? = MyApp.getInstance().resources.getString(R.string.lbl_not_found)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSorryTheKeyword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sorry_the_keyword)

)
