package com.vertexrealestateapp.app.modules.myhome.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ListRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrimaryApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_primary_apartment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFtCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_880_ft)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_600_1_800)

)
