package com.tikpikshortvideosocialnetworking.app.modules.report.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ReportModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_report)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectAReason: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_select_a_reason)

)
