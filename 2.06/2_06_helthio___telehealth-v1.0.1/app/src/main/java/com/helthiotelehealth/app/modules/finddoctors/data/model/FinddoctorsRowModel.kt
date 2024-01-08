package com.helthiotelehealth.app.modules.finddoctors.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class FinddoctorsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGeneral: String? = MyApp.getInstance().resources.getString(R.string.lbl_general)

)
