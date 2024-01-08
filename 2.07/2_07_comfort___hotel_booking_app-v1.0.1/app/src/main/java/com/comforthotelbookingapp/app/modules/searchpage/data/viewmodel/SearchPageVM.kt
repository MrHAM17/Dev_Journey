package com.comforthotelbookingapp.app.modules.searchpage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.searchpage.`data`.model.SearchPageModel
import com.comforthotelbookingapp.app.modules.searchpage.`data`.model.SearchpageRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchPageVM : ViewModel(), KoinComponent {
  val searchPageModel: MutableLiveData<SearchPageModel> = MutableLiveData(SearchPageModel())

  var navArguments: Bundle? = null

  val searchPageList: MutableLiveData<MutableList<SearchpageRowModel>> =
      MutableLiveData(mutableListOf())
}
