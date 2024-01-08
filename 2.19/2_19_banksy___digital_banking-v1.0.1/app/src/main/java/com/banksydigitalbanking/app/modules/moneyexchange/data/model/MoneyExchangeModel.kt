package com.banksydigitalbanking.app.modules.moneyexchange.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class MoneyExchangeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_money_exchange2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFrom: String? = MyApp.getInstance().resources.getString(R.string.lbl_from)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTo: String? = MyApp.getInstance().resources.getString(R.string.lbl_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExchangeRate: String? = MyApp.getInstance().resources.getString(R.string.lbl_exchange_rate)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCountry: String? = MyApp.getInstance().resources.getString(R.string.lbl_country)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUSD: String? = MyApp.getInstance().resources.getString(R.string.lbl_usd)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCR: String? = MyApp.getInstance().resources.getString(R.string.lbl_cr)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese: String? = MyApp.getInstance().resources.getString(R.string.lbl_vietnamese)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_746)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese1: String? = MyApp.getInstance().resources.getString(R.string.lbl_england)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_34_56)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese2: String? = MyApp.getInstance().resources.getString(R.string.lbl_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_12_09)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese3: String? = MyApp.getInstance().resources.getString(R.string.lbl_afghanistan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree3: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi3: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_746)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese4: String? = MyApp.getInstance().resources.getString(R.string.lbl_japan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree4: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi4: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_2_234)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese5: String? = MyApp.getInstance().resources.getString(R.string.lbl_korea)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree5: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi5: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_746)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVietnamese6: String? = MyApp.getInstance().resources.getString(R.string.lbl_china)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandFourHundredThree6: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandSevenHundredFortySi6: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_746)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etInputsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPriceValue: String? = null
)
