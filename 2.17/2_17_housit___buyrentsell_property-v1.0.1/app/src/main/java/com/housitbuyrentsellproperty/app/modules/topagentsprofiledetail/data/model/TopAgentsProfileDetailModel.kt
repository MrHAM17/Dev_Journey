package com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class TopAgentsProfileDetailModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHistory: String? = MyApp.getInstance().resources.getString(R.string.lbl_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_140)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListings: String? = MyApp.getInstance().resources.getString(R.string.lbl_listings)

)
