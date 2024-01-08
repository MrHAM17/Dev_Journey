package com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.model.PopularArtistsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.model.PopularartistsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PopularArtistsVM : ViewModel(), KoinComponent {
  val popularArtistsModel: MutableLiveData<PopularArtistsModel> =
      MutableLiveData(PopularArtistsModel())

  var navArguments: Bundle? = null

  val popularArtistsList: MutableLiveData<MutableList<PopularartistsRowModel>> =
      MutableLiveData(mutableListOf())
}
