package com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.model.ArtistDetailsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.model.ArtistdetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArtistDetailsVM : ViewModel(), KoinComponent {
  val artistDetailsModel: MutableLiveData<ArtistDetailsModel> =
      MutableLiveData(ArtistDetailsModel())

  var navArguments: Bundle? = null

  val artistDetailsList: MutableLiveData<MutableList<ArtistdetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
