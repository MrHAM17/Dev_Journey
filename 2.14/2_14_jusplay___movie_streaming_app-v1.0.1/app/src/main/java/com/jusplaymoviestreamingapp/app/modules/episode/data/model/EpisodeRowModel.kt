package com.jusplaymoviestreamingapp.app.modules.episode.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class EpisodeRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTrailer: String? = MyApp.getInstance().resources.getString(R.string.lbl_trailer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAladdinAStreet: String? =
      MyApp.getInstance().resources.getString(R.string.msg_aladdin_a_street)

)
