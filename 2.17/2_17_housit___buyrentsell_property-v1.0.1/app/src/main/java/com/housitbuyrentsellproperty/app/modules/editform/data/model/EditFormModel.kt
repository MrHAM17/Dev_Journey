package com.housitbuyrentsellproperty.app.modules.editform.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class EditFormModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit_listing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSchoolviewHouse: String? =
      MyApp.getInstance().resources.getString(R.string.msg_schoolview_house)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListingTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_listing_title)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListingtype: String? = MyApp.getInstance().resources.getString(R.string.lbl_listing_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertycategory: String? =
      MyApp.getInstance().resources.getString(R.string.msg_property_category)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLocation: String? = MyApp.getInstance().resources.getString(R.string.lbl_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJlGerungsari: String? = MyApp.getInstance().resources.getString(R.string.msg_jl_gerungsari)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectOnTheMap: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_on_the_map)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListingPhotos: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_listing_photos)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSellPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_sell_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_150_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRentPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_rent_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_320)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
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
  var etFormPasswordValue: String? = null
)
