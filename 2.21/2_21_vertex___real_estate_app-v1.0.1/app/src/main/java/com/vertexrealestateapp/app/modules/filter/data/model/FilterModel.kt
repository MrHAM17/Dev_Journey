package com.vertexrealestateapp.app.modules.filter.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class FilterModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPriceRange: String? = MyApp.getInstance().resources.getString(R.string.lbl_price_range)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_200_15_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFeatures: String? = MyApp.getInstance().resources.getString(R.string.lbl_features)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBeds: String? = MyApp.getInstance().resources.getString(R.string.lbl_beds)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFour: String? = MyApp.getInstance().resources.getString(R.string.lbl_42)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBaths: String? = MyApp.getInstance().resources.getString(R.string.lbl_baths)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertyFacts: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_property_facts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSquareFeet: String? = MyApp.getInstance().resources.getString(R.string.lbl_square_feet)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLotSize: String? = MyApp.getInstance().resources.getString(R.string.lbl_lot_size)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertyType: String? = MyApp.getInstance().resources.getString(R.string.lbl_property_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmenities: String? = MyApp.getInstance().resources.getString(R.string.lbl_amenities)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeMore: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_more)

)
