package com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChooseplanRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtVoucher: String? = MyApp.getInstance().resources.getString(R.string.lbl_voucher)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etInputsFiedValue: String? = null
)
