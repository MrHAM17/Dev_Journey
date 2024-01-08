package com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.model.NewReleasesModel
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.model.NewreleasesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NewReleasesVM : ViewModel(), KoinComponent {
  val newReleasesModel: MutableLiveData<NewReleasesModel> = MutableLiveData(NewReleasesModel())

  var navArguments: Bundle? = null

  val newReleasesList: MutableLiveData<MutableList<NewreleasesRowModel>> =
      MutableLiveData(mutableListOf())
}
