package com.firstbankdigitalbanking.app.modules.services.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LoanoneRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBusinessLoans: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_business_loans2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtItisalongestablished: String? =
      MyApp.getInstance().resources.getString(R.string.msg_it_is_a_long_established)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViewDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_view_details)

)
