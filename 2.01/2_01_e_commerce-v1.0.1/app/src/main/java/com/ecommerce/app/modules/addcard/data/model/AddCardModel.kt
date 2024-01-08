package com.ecommerce.app.modules.addcard.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class AddCardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpirationDate: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_expiration_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurityCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_security_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardHolder: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_holder2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCardNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etExpirationDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etSecurityCodeValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCardNumber1Value: String? = null
)
