package com.safebankmobilebankingapp.app.modules.history.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.history.`data`.model.HistoryModel
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventyfiveRowModel
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventynineRowModel
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventyoneRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HistoryVM : ViewModel(), KoinComponent {
  val historyModel: MutableLiveData<HistoryModel> = MutableLiveData(HistoryModel())

  var navArguments: Bundle? = null

  val seventyNineList: MutableLiveData<MutableList<SeventynineRowModel>> =
      MutableLiveData(mutableListOf())

  val seventyFiveList: MutableLiveData<MutableList<SeventyfiveRowModel>> =
      MutableLiveData(mutableListOf())

  val seventyOneList: MutableLiveData<MutableList<SeventyoneRowModel>> =
      MutableLiveData(mutableListOf())
}
