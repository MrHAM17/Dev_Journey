package com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class RealestateslistbycategoryRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_220)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWingsTower: String? = MyApp.getInstance().resources.getString(R.string.lbl_wings_tower)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)

)
