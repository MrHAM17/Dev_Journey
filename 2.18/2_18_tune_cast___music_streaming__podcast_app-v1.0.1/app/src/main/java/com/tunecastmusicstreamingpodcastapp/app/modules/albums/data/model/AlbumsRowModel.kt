package com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class AlbumsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtThreeDimensions: String? =
      MyApp.getInstance().resources.getString(R.string.msg_three_dimensions)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_amber_mark)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2022)

)
