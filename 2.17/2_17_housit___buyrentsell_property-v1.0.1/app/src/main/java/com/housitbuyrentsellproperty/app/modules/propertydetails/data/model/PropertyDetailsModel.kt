package com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PropertyDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_32)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_wings_tower)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_220)
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
  var txtDetail: String? = MyApp.getInstance().resources.getString(R.string.lbl_per_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnderson: String? = MyApp.getInstance().resources.getString(R.string.lbl_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOwner: String? = MyApp.getInstance().resources.getString(R.string.msg_real_estate_agent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLocationPublicFacilities: String? =
      MyApp.getInstance().resources.getString(R.string.msg_location_public)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_cikoko_timur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViewAllOnMap: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_view_all_on_map)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCostofLiving: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_cost_of_living)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViewdetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_view_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_830_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFromaveragecitizensp: String? =
      MyApp.getInstance().resources.getString(R.string.msg_from_average_citizen)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNearbyFromthisLocation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nearby_from_this)

)
