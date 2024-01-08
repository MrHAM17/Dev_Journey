package com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class FrameRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDoctorStrange: String? =
      MyApp.getInstance().resources.getString(R.string.msg_doctor_strange)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFifteenThousandThirtyFive: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_50_35)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2021)

)
