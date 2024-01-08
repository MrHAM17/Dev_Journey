package com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.model.Artists1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.model.ArtistsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArtistsVM : ViewModel(), KoinComponent {
  val artistsModel: MutableLiveData<ArtistsModel> = MutableLiveData(ArtistsModel())

  var navArguments: Bundle? = null

  val artistsList: MutableLiveData<MutableList<Artists1RowModel>> = MutableLiveData(mutableListOf())
}
