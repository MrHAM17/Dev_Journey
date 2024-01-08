package com.vertexrealestateapp.app.modules.pickdate.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class PickDateModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRequestAHomeTour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_request_a_home_tour)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInPerson: String? = MyApp.getInstance().resources.getString(R.string.lbl_in_person)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVirtual: String? = MyApp.getInstance().resources.getString(R.string.lbl_virtual)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJanuary: String? = MyApp.getInstance().resources.getString(R.string.lbl_january)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPickATime: String? = MyApp.getInstance().resources.getString(R.string.lbl_pick_a_time)

)
