package com.firstbankdigitalbanking.app.modules.home.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOverview: String? = MyApp.getInstance().resources.getString(R.string.lbl_overview)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyCards: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_cards)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentTransaction: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recent_transaction)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDepositFromMy: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_deposit_from_my)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_28_january_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_850)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDepositPaypal: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_deposit_paypal)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate1: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_january_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJemiWilson: String? = MyApp.getInstance().resources.getString(R.string.lbl_jemi_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate2: String? = MyApp.getInstance().resources.getString(R.string.lbl_21_january_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_400)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeeklyActivity: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_weekly_activity)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiposit: String? = MyApp.getInstance().resources.getString(R.string.lbl_diposit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWithdraw: String? = MyApp.getInstance().resources.getString(R.string.lbl_withdraw)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFiveHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFourHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_400)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThreeHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_300)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwoHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_200)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_100)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSat: String? = MyApp.getInstance().resources.getString(R.string.lbl_sat)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSun: String? = MyApp.getInstance().resources.getString(R.string.lbl_sun)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMon: String? = MyApp.getInstance().resources.getString(R.string.lbl_mon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTue: String? = MyApp.getInstance().resources.getString(R.string.lbl_tue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWed: String? = MyApp.getInstance().resources.getString(R.string.lbl_wed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThu: String? = MyApp.getInstance().resources.getString(R.string.lbl_thu)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFri: String? = MyApp.getInstance().resources.getString(R.string.lbl_fri)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpenseStatistics: String? =
      MyApp.getInstance().resources.getString(R.string.msg_expense_statistics)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEntertainment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_30_entertainment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInvestment: String? = MyApp.getInstance().resources.getString(R.string.lbl_20_investment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOthers: String? = MyApp.getInstance().resources.getString(R.string.lbl_35_others)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBillExpense: String? =
      MyApp.getInstance().resources.getString(R.string.msg_15_bill_expense)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuickTransfer: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_quick_transfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWriteAmount: String? = MyApp.getInstance().resources.getString(R.string.lbl_write_amount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFiftyTwoThousandFiveHundredFif: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_525_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalanceHistory: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_balance_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEightHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_800)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSixHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_600)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFourHundred1: String? = MyApp.getInstance().resources.getString(R.string.lbl_400)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwoHundred1: String? = MyApp.getInstance().resources.getString(R.string.lbl_200)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero1: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJul: String? = MyApp.getInstance().resources.getString(R.string.lbl_jul)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAug: String? = MyApp.getInstance().resources.getString(R.string.lbl_aug)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSep: String? = MyApp.getInstance().resources.getString(R.string.lbl_sep)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOct: String? = MyApp.getInstance().resources.getString(R.string.lbl_oct)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNov: String? = MyApp.getInstance().resources.getString(R.string.lbl_nov)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDec: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJan: String? = MyApp.getInstance().resources.getString(R.string.lbl_jan)

)
