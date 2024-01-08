package com.blogapp.app.modules.searchtopics.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.searchtopics.`data`.model.SearchTopicsModel
import org.koin.core.KoinComponent

class SearchTopicsVM : ViewModel(), KoinComponent {
  val searchTopicsModel: MutableLiveData<SearchTopicsModel> = MutableLiveData(SearchTopicsModel())

  var navArguments: Bundle? = null
}
