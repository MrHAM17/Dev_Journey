package com.vertexrealestateapp.app.modules.homesearch.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeSearchModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrUseMyCurrent: String? =
      MyApp.getInstance().resources.getString(R.string.msg_or_use_my_current)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSearchResults: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_search_results)

)
