package com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.model.WeeklyRankingModel
import com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.model.WeeklyrankingRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class WeeklyRankingVM : ViewModel(), KoinComponent {
  val weeklyRankingModel: MutableLiveData<WeeklyRankingModel> =
      MutableLiveData(WeeklyRankingModel())

  var navArguments: Bundle? = null

  val weeklyRankingList: MutableLiveData<MutableList<WeeklyrankingRowModel>> =
      MutableLiveData(mutableListOf())
}
