package com.firstbankdigitalbanking.app.modules.services.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LifeinsurancefilledRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLifeInsurance: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_life_insurance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUnlimitedProtection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_unlimited_protection)

)
