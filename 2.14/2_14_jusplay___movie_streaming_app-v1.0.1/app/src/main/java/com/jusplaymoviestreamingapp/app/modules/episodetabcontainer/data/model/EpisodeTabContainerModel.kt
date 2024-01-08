package com.jusplaymoviestreamingapp.app.modules.episodetabcontainer.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class EpisodeTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDisneySAladdin: String? =
      MyApp.getInstance().resources.getString(R.string.msg_disney_s_aladdin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2019)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAdventureComedy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_adventure_comedy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_2h_8m)

)
