package com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.Autolayoutvertical2RowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.Autolayoutvertical3RowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.SearchTypeKeywordModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchTypeKeywordVM : ViewModel(), KoinComponent {
  val searchTypeKeywordModel: MutableLiveData<SearchTypeKeywordModel> =
      MutableLiveData(SearchTypeKeywordModel())

  var navArguments: Bundle? = null

  val autoLayoutVerticalList: MutableLiveData<MutableList<Autolayoutvertical2RowModel>> =
      MutableLiveData(mutableListOf())

  val autoLayoutVertical1List: MutableLiveData<MutableList<Autolayoutvertical3RowModel>> =
      MutableLiveData(mutableListOf())
}
