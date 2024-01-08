package com.fashionistaecommerceapp.app.modules.checkout.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class CheckoutRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCreditCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_credit_card)

)
