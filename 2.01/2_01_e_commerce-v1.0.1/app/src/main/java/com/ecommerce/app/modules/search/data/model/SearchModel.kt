package com.ecommerce.app.modules.search.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class SearchModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirMaxReact: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_max_2703)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirVapormax: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_vapormax)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirMaxReact1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_max_2703)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirMax: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_max_2704)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirVaporMax: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_vapormax2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirMaxNinetySeven: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_max_97)

)
