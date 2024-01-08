package com.ecommerce.app.modules.sortby.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class SortByModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSortBy: String? = MyApp.getInstance().resources.getString(R.string.lbl_sort_by)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBestMatch: String? = MyApp.getInstance().resources.getString(R.string.lbl_best_match)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTimeEndingSoonest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_time_ending_soonest)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTimeNewlyListed: String? =
      MyApp.getInstance().resources.getString(R.string.msg_time_newly_listed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPriceShipping: String? =
      MyApp.getInstance().resources.getString(R.string.msg_price_shipping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPriceShipping1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_price_shipping2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistanceNearest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_distance_nearest)

)
