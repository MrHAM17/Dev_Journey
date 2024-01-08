package com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.model.ChoosePaymentMethodModel
import com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.model.ChoosepaymentmethodRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ChoosePaymentMethodVM : ViewModel(), KoinComponent {
  val choosePaymentMethodModel: MutableLiveData<ChoosePaymentMethodModel> =
      MutableLiveData(ChoosePaymentMethodModel())

  var navArguments: Bundle? = null

  val choosePaymentMethodList: MutableLiveData<MutableList<ChoosepaymentmethodRowModel>> =
      MutableLiveData(mutableListOf())
}
