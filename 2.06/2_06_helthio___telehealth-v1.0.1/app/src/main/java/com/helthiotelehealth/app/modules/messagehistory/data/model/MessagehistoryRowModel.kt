package com.helthiotelehealth.app.modules.messagehistory.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class MessagehistoryRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDrMarcusHorizon: String? =
      MyApp.getInstance().resources.getString(R.string.msg_dr_marcus_horizon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIDonTHaveAny: String? =
      MyApp.getInstance().resources.getString(R.string.msg_i_don_t_have_any2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandTwentyFour: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_10_24)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)

)
