package com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.model.SelectPaymentMethodModel
import com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.model.SelectpaymentmethodRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SelectPaymentMethodVM : ViewModel(), KoinComponent {
  val selectPaymentMethodModel: MutableLiveData<SelectPaymentMethodModel> =
      MutableLiveData(SelectPaymentMethodModel())

  var navArguments: Bundle? = null

  val selectPaymentMethodList: MutableLiveData<MutableList<SelectpaymentmethodRowModel>> =
      MutableLiveData(mutableListOf())
}
