package com.housitbuyrentsellproperty.app.modules.reviewsgallery.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewsGalleryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSamuelElla: String? = MyApp.getInstance().resources.getString(R.string.lbl_samuel_ella)

)
