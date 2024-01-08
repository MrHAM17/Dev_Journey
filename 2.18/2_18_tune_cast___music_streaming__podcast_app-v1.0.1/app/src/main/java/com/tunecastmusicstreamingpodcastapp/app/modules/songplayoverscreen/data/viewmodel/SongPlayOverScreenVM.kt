package com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.model.SongPlayOverScreenModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.model.SongplayoverscreenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SongPlayOverScreenVM : ViewModel(), KoinComponent {
  val songPlayOverScreenModel: MutableLiveData<SongPlayOverScreenModel> =
      MutableLiveData(SongPlayOverScreenModel())

  var navArguments: Bundle? = null

  val songPlayOverScreenList: MutableLiveData<MutableList<SongplayoverscreenRowModel>> =
      MutableLiveData(mutableListOf())
}
