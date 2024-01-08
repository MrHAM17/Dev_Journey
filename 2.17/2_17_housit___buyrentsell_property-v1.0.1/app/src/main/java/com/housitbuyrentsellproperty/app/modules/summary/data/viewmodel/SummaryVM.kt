package com.housitbuyrentsellproperty.app.modules.summary.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.summary.`data`.model.SummaryModel
import org.koin.core.KoinComponent

class SummaryVM : ViewModel(), KoinComponent {
  val summaryModel: MutableLiveData<SummaryModel> = MutableLiveData(SummaryModel())

  var navArguments: Bundle? = null
}
