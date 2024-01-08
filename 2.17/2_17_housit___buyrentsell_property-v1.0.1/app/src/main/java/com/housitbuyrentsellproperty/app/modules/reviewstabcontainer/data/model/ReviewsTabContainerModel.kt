package com.housitbuyrentsellproperty.app.modules.reviewstabcontainer.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewsTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkyDandelionsApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sky_dandelions_apartment)
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

)
