package com.jusplaymoviestreamingapp.app.modules.nohistory.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.nohistory.`data`.model.NoHistoryModel
import org.koin.core.KoinComponent

class NoHistoryVM : ViewModel(), KoinComponent {
  val noHistoryModel: MutableLiveData<NoHistoryModel> = MutableLiveData(NoHistoryModel())

  var navArguments: Bundle? = null
}
