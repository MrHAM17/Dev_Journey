package com.vertexrealestateapp.app.modules.productdetails.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class ImageSliderImageAndDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOceanAvenue: String? =
      MyApp.getInstance().resources.getString(R.string.msg_701_ocean_avenue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var imageImage: String? = ""

)
