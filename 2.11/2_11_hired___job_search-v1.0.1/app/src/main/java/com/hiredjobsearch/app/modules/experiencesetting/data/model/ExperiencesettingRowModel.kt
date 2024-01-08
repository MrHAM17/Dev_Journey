package com.hiredjobsearch.app.modules.experiencesetting.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ExperiencesettingRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtInternshipUIUX: String? =
      MyApp.getInstance().resources.getString(R.string.msg_internship_ui_ux)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_shopee_sg)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular2: String? = MyApp.getInstance().resources.getString(R.string.lbl2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2019)

)
