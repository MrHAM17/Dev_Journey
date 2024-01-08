package com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChoosePaymentMethodModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile1: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentMethods: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_methods)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddNewCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_new_card)

)
