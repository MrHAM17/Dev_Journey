package com.moviestreaming.app.modules.searchnine.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.searchnine.`data`.model.SearchNineModel
import com.moviestreaming.app.modules.searchnine.`data`.model.SearchnineRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchNineVM : ViewModel(), KoinComponent {
  val searchNineModel: MutableLiveData<SearchNineModel> = MutableLiveData(SearchNineModel())

  var navArguments: Bundle? = null

  val searchNineList: MutableLiveData<MutableList<SearchnineRowModel>> =
      MutableLiveData(mutableListOf())
}
