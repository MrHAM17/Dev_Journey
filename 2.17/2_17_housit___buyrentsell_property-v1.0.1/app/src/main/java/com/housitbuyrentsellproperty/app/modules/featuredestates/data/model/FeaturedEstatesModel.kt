package com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class FeaturedEstatesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_featured_estates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_our_recommended)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_70)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEstates: String? = MyApp.getInstance().resources.getString(R.string.lbl_estates)

)
