package com.comforthotelbookingapp.app.modules.reviewtabcontainer.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_review)

)
