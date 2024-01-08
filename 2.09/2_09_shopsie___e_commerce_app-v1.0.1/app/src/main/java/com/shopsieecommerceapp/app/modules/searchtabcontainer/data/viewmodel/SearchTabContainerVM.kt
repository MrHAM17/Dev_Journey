package com.shopsieecommerceapp.app.modules.searchtabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.searchtabcontainer.`data`.model.SearchTabContainerModel
import org.koin.core.KoinComponent

class SearchTabContainerVM : ViewModel(), KoinComponent {
  val searchTabContainerModel: MutableLiveData<SearchTabContainerModel> =
      MutableLiveData(SearchTabContainerModel())

  var navArguments: Bundle? = null
}
