package com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.`data`.model.HistoryMusicModel
import com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.`data`.model.HistorymusicRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HistoryMusicVM : ViewModel(), KoinComponent {
  val historyMusicModel: MutableLiveData<HistoryMusicModel> = MutableLiveData(HistoryMusicModel())

  var navArguments: Bundle? = null

  val historyMusicList: MutableLiveData<MutableList<HistorymusicRowModel>> =
      MutableLiveData(mutableListOf())
}
