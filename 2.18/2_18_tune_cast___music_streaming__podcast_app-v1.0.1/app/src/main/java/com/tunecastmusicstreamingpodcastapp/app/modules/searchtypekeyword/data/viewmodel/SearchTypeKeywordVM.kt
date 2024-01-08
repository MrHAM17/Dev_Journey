package com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.model.SearchTypeKeywordModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.model.SearchtypekeywordRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchTypeKeywordVM : ViewModel(), KoinComponent {
  val searchTypeKeywordModel: MutableLiveData<SearchTypeKeywordModel> =
      MutableLiveData(SearchTypeKeywordModel())

  var navArguments: Bundle? = null

  val searchTypeKeywordList: MutableLiveData<MutableList<SearchtypekeywordRowModel>> =
      MutableLiveData(mutableListOf())
}
