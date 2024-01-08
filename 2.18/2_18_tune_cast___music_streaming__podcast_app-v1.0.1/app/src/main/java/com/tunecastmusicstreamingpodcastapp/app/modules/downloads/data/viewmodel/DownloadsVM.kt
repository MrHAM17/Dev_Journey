package com.tunecastmusicstreamingpodcastapp.app.modules.downloads.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.downloads.`data`.model.DownloadsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.downloads.`data`.model.DownloadsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DownloadsVM : ViewModel(), KoinComponent {
  val downloadsModel: MutableLiveData<DownloadsModel> = MutableLiveData(DownloadsModel())

  var navArguments: Bundle? = null

  val downloadsList: MutableLiveData<MutableList<DownloadsRowModel>> =
      MutableLiveData(mutableListOf())
}
