package com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.model.TrendingNowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.model.TrendingnowRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TrendingNowVM : ViewModel(), KoinComponent {
  val trendingNowModel: MutableLiveData<TrendingNowModel> = MutableLiveData(TrendingNowModel())

  var navArguments: Bundle? = null

  val trendingNowList: MutableLiveData<MutableList<TrendingnowRowModel>> =
      MutableLiveData(mutableListOf())
}
