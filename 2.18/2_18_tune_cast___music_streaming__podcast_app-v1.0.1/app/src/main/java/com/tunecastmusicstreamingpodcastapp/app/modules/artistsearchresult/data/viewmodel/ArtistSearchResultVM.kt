package com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.`data`.model.ArtistSearchResultModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.`data`.model.ArtistsearchresultRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArtistSearchResultVM : ViewModel(), KoinComponent {
  val artistSearchResultModel: MutableLiveData<ArtistSearchResultModel> =
      MutableLiveData(ArtistSearchResultModel())

  var navArguments: Bundle? = null

  val artistSearchResultList: MutableLiveData<MutableList<ArtistsearchresultRowModel>> =
      MutableLiveData(mutableListOf())
}
