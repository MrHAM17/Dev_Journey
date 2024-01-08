package com.housitbuyrentsellproperty.app.modules.summarysuccess.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.summarysuccess.`data`.model.SummarySuccessModel
import org.koin.core.KoinComponent

class SummarySuccessVM : ViewModel(), KoinComponent {
  val summarySuccessModel: MutableLiveData<SummarySuccessModel> =
      MutableLiveData(SummarySuccessModel())

  var navArguments: Bundle? = null
}
