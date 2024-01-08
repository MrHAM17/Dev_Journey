package com.ecommerce.app.modules.searchresultnodatafound.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.searchresultnodatafound.`data`.model.SearchResultNoDataFoundModel
import com.ecommerce.app.modules.searchresultnodatafound.`data`.model.SpinnerBottomiconModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultNoDataFoundVM : ViewModel(), KoinComponent {
  val searchResultNoDataFoundModel: MutableLiveData<SearchResultNoDataFoundModel> =
      MutableLiveData(SearchResultNoDataFoundModel())

  var navArguments: Bundle? = null

  val spinnerBottomiconList: MutableLiveData<MutableList<SpinnerBottomiconModel>> =
      MutableLiveData()
}
