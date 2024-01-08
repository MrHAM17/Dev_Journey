package com.moviestreaming.app.modules.searchten.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.searchten.`data`.model.SearchTenModel
import com.moviestreaming.app.modules.searchten.`data`.model.SearchtenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchTenVM : ViewModel(), KoinComponent {
  val searchTenModel: MutableLiveData<SearchTenModel> = MutableLiveData(SearchTenModel())

  var navArguments: Bundle? = null

  val searchTenList: MutableLiveData<MutableList<SearchtenRowModel>> =
      MutableLiveData(mutableListOf())
}
