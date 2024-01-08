package com.firstbankdigitalbanking.app.modules.loans.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LoansModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOverview: String? = MyApp.getInstance().resources.getString(R.string.lbl_loans)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActiveLoansOverview: String? =
      MyApp.getInstance().resources.getString(R.string.msg_active_loans_overview)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoanMoney: String? = MyApp.getInstance().resources.getString(R.string.lbl_loan_money)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLeftToRepay: String? = MyApp.getInstance().resources.getString(R.string.lbl_left_to_repay)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRepay: String? = MyApp.getInstance().resources.getString(R.string.lbl_repay)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_100_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_500_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_250_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice4: String? = MyApp.getInstance().resources.getString(R.string.lbl_900_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice5: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice6: String? = MyApp.getInstance().resources.getString(R.string.lbl_50_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice7: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice8: String? = MyApp.getInstance().resources.getString(R.string.lbl_50_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice9: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice10: String? = MyApp.getInstance().resources.getString(R.string.lbl_80_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice11: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice12: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice13: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice14: String? = MyApp.getInstance().resources.getString(R.string.lbl_160_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice15: String? = MyApp.getInstance().resources.getString(R.string.lbl_100_800)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice16: String? = MyApp.getInstance().resources.getString(R.string.lbl_125_0000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice17: String? = MyApp.getInstance().resources.getString(R.string.lbl_750_000)

)
