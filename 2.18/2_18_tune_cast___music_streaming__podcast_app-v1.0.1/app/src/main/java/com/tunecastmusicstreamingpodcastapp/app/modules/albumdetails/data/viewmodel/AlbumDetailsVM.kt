package com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.model.AlbumDetailsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.model.AlbumdetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AlbumDetailsVM : ViewModel(), KoinComponent {
  val albumDetailsModel: MutableLiveData<AlbumDetailsModel> = MutableLiveData(AlbumDetailsModel())

  var navArguments: Bundle? = null

  val albumDetailsList: MutableLiveData<MutableList<AlbumdetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
