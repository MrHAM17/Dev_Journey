package com.moviestreaming.app.modules.searchsix.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies7RowModel
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies8RowModel
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies9RowModel
import com.moviestreaming.app.modules.searchsix.`data`.model.SearchSixModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchSixVM : ViewModel(), KoinComponent {
  val searchSixModel: MutableLiveData<SearchSixModel> = MutableLiveData(SearchSixModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies7RowModel>> = MutableLiveData(mutableListOf())

  val movies1List: MutableLiveData<MutableList<Movies8RowModel>> = MutableLiveData(mutableListOf())

  val movies2List: MutableLiveData<MutableList<Movies9RowModel>> = MutableLiveData(mutableListOf())
}
