package com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.model.SearchResultsUsersModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.model.SearchresultsusersRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultsUsersVM : ViewModel(), KoinComponent {
  val searchResultsUsersModel: MutableLiveData<SearchResultsUsersModel> =
      MutableLiveData(SearchResultsUsersModel())

  var navArguments: Bundle? = null

  val searchresultsusersList: MutableLiveData<MutableList<SearchresultsusersRowModel>> =
      MutableLiveData(mutableListOf())
}
