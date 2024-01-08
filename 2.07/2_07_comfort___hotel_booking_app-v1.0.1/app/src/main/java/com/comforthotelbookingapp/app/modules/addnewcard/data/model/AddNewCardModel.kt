package com.comforthotelbookingapp.app.modules.addnewcard.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewCardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_add_new_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etExpiryDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCvvValue: String? = null
)
