package com.firstbankdigitalbanking.app.modules.home.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LiviabatorRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLiviaBator: String? = MyApp.getInstance().resources.getString(R.string.lbl_livia_bator)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCEO: String? = MyApp.getInstance().resources.getString(R.string.lbl_ceo)

)
