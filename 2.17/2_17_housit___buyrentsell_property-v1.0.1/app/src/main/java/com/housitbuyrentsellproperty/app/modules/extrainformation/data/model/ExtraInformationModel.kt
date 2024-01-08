package com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ExtraInformationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_listing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_almost_finish_complete_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSellPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_sell_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRentPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_rent_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertyFeatures: String? =
      MyApp.getInstance().resources.getString(R.string.msg_property_features)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotalRooms: String? = MyApp.getInstance().resources.getString(R.string.lbl_total_rooms)
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
  var etPrice1Value: String? = null
)
