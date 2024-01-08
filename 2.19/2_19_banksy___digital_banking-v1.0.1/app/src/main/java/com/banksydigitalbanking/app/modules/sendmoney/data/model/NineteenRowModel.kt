package com.banksydigitalbanking.app.modules.sendmoney.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class NineteenRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJenningsChamplin1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_angelina_druff)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJenningsChamplin2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ac_159_107_1396)

)
