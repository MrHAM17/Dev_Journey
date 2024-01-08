package com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.ChartsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.Topalbumsglobal1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.TopalbumsglobalRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ChartsVM : ViewModel(), KoinComponent {
  val chartsModel: MutableLiveData<ChartsModel> = MutableLiveData(ChartsModel())

  var navArguments: Bundle? = null

  val tOPALBUMSGLOBALList: MutableLiveData<MutableList<TopalbumsglobalRowModel>> =
      MutableLiveData(mutableListOf())

  val tOPALBUMSGLOBAL1List: MutableLiveData<MutableList<Topalbumsglobal1RowModel>> =
      MutableLiveData(mutableListOf())
}
