package com.comforthotelbookingapp.app.modules.searchtype.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.searchtype.`data`.model.SearchTypeModel
import org.koin.core.KoinComponent

class SearchTypeVM : ViewModel(), KoinComponent {
  val searchTypeModel: MutableLiveData<SearchTypeModel> = MutableLiveData(SearchTypeModel())

  var navArguments: Bundle? = null
}
