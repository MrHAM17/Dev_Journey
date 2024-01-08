package com.safebankmobilebankingapp.app.modules.statisticstabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.statisticstabcontainer.`data`.model.SpinnerUSDModel
import com.safebankmobilebankingapp.app.modules.statisticstabcontainer.`data`.model.StatisticsTabContainerModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class StatisticsTabContainerVM : ViewModel(), KoinComponent {
  val statisticsTabContainerModel: MutableLiveData<StatisticsTabContainerModel> =
      MutableLiveData(StatisticsTabContainerModel())

  var navArguments: Bundle? = null

  val spinnerUSDList: MutableLiveData<MutableList<SpinnerUSDModel>> = MutableLiveData()
}
