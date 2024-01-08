package com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.Frame1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.FrameRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.HomeModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.TopchartsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<FrameRowModel>> = MutableLiveData(mutableListOf())

  val frame1List: MutableLiveData<MutableList<Frame1RowModel>> = MutableLiveData(mutableListOf())

  val topChartsList: MutableLiveData<MutableList<TopchartsRowModel>> =
      MutableLiveData(mutableListOf())
}
