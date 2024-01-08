package com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfound.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfound.`data`.model.SearchNotFoundModel
import org.koin.core.KoinComponent

class SearchNotFoundVM : ViewModel(), KoinComponent {
  val searchNotFoundModel: MutableLiveData<SearchNotFoundModel> =
      MutableLiveData(SearchNotFoundModel())

  var navArguments: Bundle? = null
}
