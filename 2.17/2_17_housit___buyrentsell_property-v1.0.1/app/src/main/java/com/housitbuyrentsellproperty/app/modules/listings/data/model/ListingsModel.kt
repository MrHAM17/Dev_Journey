package com.housitbuyrentsellproperty.app.modules.listings.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ListingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_30)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListings: String? = MyApp.getInstance().resources.getString(R.string.lbl_listings)

)
