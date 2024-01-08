package com.fashionistaecommerceapp.app.modules.checkout.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.checkout.`data`.model.CheckoutModel
import com.fashionistaecommerceapp.app.modules.checkout.`data`.model.CheckoutRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CheckoutVM : ViewModel(), KoinComponent {
  val checkoutModel: MutableLiveData<CheckoutModel> = MutableLiveData(CheckoutModel())

  var navArguments: Bundle? = null

  val checkoutList: MutableLiveData<MutableList<CheckoutRowModel>> =
      MutableLiveData(mutableListOf())
}
