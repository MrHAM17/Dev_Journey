package com.fashionistaecommerceapp.app.modules.search.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.search.`data`.model.Frame1RowModel
import com.fashionistaecommerceapp.app.modules.search.`data`.model.FrameRowModel
import com.fashionistaecommerceapp.app.modules.search.`data`.model.SearchModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchVM : ViewModel(), KoinComponent {
  val searchModel: MutableLiveData<SearchModel> = MutableLiveData(SearchModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<FrameRowModel>> = MutableLiveData(mutableListOf())

  val frame1List: MutableLiveData<MutableList<Frame1RowModel>> = MutableLiveData(mutableListOf())
}
