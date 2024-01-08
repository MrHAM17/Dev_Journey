package com.musicplayer.app.modules.homepage.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class NewreleaseslistRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUrgentSiege: String? = MyApp.getInstance().resources.getString(R.string.lbl_urgent_siege)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDamnedAnthem: String? = MyApp.getInstance().resources.getString(R.string.lbl_damned_anthem)

)
