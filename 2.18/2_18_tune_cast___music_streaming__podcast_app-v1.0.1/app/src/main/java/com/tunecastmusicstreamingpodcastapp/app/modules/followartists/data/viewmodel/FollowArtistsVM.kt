package com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.model.FollowArtistsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.model.FollowartistsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FollowArtistsVM : ViewModel(), KoinComponent {
  val followArtistsModel: MutableLiveData<FollowArtistsModel> =
      MutableLiveData(FollowArtistsModel())

  var navArguments: Bundle? = null

  val followArtistsList: MutableLiveData<MutableList<FollowartistsRowModel>> =
      MutableLiveData(mutableListOf())
}
