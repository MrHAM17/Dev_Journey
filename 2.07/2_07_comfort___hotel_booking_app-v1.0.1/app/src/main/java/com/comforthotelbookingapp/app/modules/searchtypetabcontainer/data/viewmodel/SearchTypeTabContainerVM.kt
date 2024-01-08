package com.comforthotelbookingapp.app.modules.searchtypetabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.searchtypetabcontainer.`data`.model.SearchTypeTabContainerModel
import org.koin.core.KoinComponent

class SearchTypeTabContainerVM : ViewModel(), KoinComponent {
  val searchTypeTabContainerModel: MutableLiveData<SearchTypeTabContainerModel> =
      MutableLiveData(SearchTypeTabContainerModel())

  var navArguments: Bundle? = null
}
