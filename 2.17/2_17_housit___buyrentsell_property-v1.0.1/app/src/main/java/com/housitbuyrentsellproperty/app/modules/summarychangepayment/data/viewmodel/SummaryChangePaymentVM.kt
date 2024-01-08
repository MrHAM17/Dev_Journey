package com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.model.Layout2RowModel
import com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.model.SummaryChangePaymentModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SummaryChangePaymentVM : ViewModel(), KoinComponent {
  val summaryChangePaymentModel: MutableLiveData<SummaryChangePaymentModel> =
      MutableLiveData(SummaryChangePaymentModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<Layout2RowModel>> = MutableLiveData(mutableListOf())
}
