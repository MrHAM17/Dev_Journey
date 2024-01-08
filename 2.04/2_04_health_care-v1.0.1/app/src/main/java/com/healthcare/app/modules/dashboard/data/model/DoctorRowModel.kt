package com.healthcare.app.modules.dashboard.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class DoctorRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDrMarcusHorizo: String? =
      MyApp.getInstance().resources.getString(R.string.msg_dr_marcus_horizo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChardiologist: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_chardiologist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRatting: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_7)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_800m_away)

)
