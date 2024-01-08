package com.moviestreaming.app.modules.searchseven.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.searchseven.`data`.model.SearchSevenModel
import com.moviestreaming.app.modules.searchseven.`data`.model.SearchsevenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchSevenVM : ViewModel(), KoinComponent {
  val searchSevenModel: MutableLiveData<SearchSevenModel> = MutableLiveData(SearchSevenModel())

  var navArguments: Bundle? = null

  val searchSevenList: MutableLiveData<MutableList<SearchsevenRowModel>> =
      MutableLiveData(mutableListOf())
}
