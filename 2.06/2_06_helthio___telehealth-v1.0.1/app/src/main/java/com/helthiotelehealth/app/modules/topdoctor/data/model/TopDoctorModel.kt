package com.helthiotelehealth.app.modules.topdoctor.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class TopDoctorModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLogin: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_doctor)

)
