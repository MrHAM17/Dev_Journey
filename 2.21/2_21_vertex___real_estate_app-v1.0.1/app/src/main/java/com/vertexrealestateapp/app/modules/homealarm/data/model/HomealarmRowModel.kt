package com.vertexrealestateapp.app.modules.homealarm.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomealarmRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMightyCincoFamily: String? =
      MyApp.getInstance().resources.getString(R.string.msg_mighty_cinco_family)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStCelinaDelaware: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJan: String? = MyApp.getInstance().resources.getString(R.string.lbl_jan_1_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_00_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBuyerSAgent: String? = MyApp.getInstance().resources.getString(R.string.lbl_buyer_s_agent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLeslieAlexander: String? =
      MyApp.getInstance().resources.getString(R.string.msg_leslie_alexander)

)
