package com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PropertydetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_220)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth1: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWingsTower: String? = MyApp.getInstance().resources.getString(R.string.lbl_wings_tower)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_22)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_190)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth2: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkyDandelions: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_sky_dandelions2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)

)
