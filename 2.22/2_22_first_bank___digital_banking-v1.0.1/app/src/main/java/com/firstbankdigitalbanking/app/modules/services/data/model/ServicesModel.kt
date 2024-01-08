package com.firstbankdigitalbanking.app.modules.services.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ServicesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOverview: String? = MyApp.getInstance().resources.getString(R.string.lbl_services)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBankServicesList: String? =
      MyApp.getInstance().resources.getString(R.string.msg_bank_services_list)

)
