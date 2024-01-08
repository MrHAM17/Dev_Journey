package com.housitbuyrentsellproperty.app.modules.historydetail.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.historydetail.`data`.model.HistoryDetailModel
import org.koin.core.KoinComponent

class HistoryDetailVM : ViewModel(), KoinComponent {
  val historyDetailModel: MutableLiveData<HistoryDetailModel> =
      MutableLiveData(HistoryDetailModel())

  var navArguments: Bundle? = null
}
