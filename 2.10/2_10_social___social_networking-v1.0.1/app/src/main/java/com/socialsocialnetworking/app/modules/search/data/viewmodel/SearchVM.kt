package com.socialsocialnetworking.app.modules.search.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.search.`data`.model.RecentsearchesRowModel
import com.socialsocialnetworking.app.modules.search.`data`.model.SearchModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchVM : ViewModel(), KoinComponent {
  val searchModel: MutableLiveData<SearchModel> = MutableLiveData(SearchModel())

  var navArguments: Bundle? = null

  val recentSearchesList: MutableLiveData<MutableList<RecentsearchesRowModel>> =
      MutableLiveData(mutableListOf())
}
