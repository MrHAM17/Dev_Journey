package com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChoosepaymentmethodRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPaypal: String? = MyApp.getInstance().resources.getString(R.string.lbl_paypal)

)
