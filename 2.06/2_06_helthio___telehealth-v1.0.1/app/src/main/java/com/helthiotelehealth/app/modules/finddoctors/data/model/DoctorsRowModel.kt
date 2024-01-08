package com.helthiotelehealth.app.modules.finddoctors.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class DoctorsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDrMarcus: String? = MyApp.getInstance().resources.getString(R.string.lbl_dr_marcus)

)
