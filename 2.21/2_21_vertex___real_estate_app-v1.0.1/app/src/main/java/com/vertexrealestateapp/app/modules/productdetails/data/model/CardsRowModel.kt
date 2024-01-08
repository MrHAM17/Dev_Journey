package com.vertexrealestateapp.app.modules.productdetails.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class CardsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTheNewSchoolAt: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_new_school_at)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPublicPrekEight: String? =
      MyApp.getInstance().resources.getString(R.string.msg_public_prek_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviewsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_reviews)

)
