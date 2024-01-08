package com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.model.TopAlbumsGlobalModel
import com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.model.Topalbumsglobal2RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopAlbumsGlobalVM : ViewModel(), KoinComponent {
  val topAlbumsGlobalModel: MutableLiveData<TopAlbumsGlobalModel> =
      MutableLiveData(TopAlbumsGlobalModel())

  var navArguments: Bundle? = null

  val topAlbumsGlobalList: MutableLiveData<MutableList<Topalbumsglobal2RowModel>> =
      MutableLiveData(mutableListOf())
}
