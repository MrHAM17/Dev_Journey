package com.housitbuyrentsellproperty.app.modules.allreviewstabcontainer.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class AllReviewsTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_all_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnderson: String? = MyApp.getInstance().resources.getString(R.string.lbl_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOwner: String? = MyApp.getInstance().resources.getString(R.string.lbl_owner)

)
