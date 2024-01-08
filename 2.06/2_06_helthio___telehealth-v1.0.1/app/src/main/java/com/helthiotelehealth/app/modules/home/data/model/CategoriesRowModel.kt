package com.helthiotelehealth.app.modules.home.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class CategoriesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAmbulance: String? = MyApp.getInstance().resources.getString(R.string.lbl_ambulance)

)
