package com.comforthotelbookingapp.app.modules.searchpagetabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.searchpagetabcontainer.`data`.model.SearchPageTabContainerModel
import org.koin.core.KoinComponent

class SearchPageTabContainerVM : ViewModel(), KoinComponent {
  val searchPageTabContainerModel: MutableLiveData<SearchPageTabContainerModel> =
      MutableLiveData(SearchPageTabContainerModel())

  var navArguments: Bundle? = null
}
