package com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectsavedRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTheIceAgeAdventures: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_ice_age_adventures)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActionAdventure: String? =
      MyApp.getInstance().resources.getString(R.string.msg_action_adventure)

)
