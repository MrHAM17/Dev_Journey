package com.housitbuyrentsellproperty.app.modules.filterfull.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class FilterFullModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_filter)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLocation: String? = MyApp.getInstance().resources.getString(R.string.lbl_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelltype: String? = MyApp.getInstance().resources.getString(R.string.lbl_sell_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnvironmentFacilities: String? =
      MyApp.getInstance().resources.getString(R.string.msg_environment_facilities)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPriceValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFormValueValue: String? = null
)
