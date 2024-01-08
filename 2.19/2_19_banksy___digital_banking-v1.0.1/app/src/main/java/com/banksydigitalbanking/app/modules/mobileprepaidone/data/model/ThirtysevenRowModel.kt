package com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ThirtysevenRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJenningsChamplin1: String? = MyApp.getInstance().resources.getString(R.string.lbl_belgeman)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJenningsChamplin2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ac_159_107_1396)

)
