package com.jusplaymoviestreamingapp.app.modules.search.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.Frame2RowModel
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.Frame3RowModel
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.SearchModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchVM : ViewModel(), KoinComponent {
  val searchModel: MutableLiveData<SearchModel> = MutableLiveData(SearchModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame2RowModel>> = MutableLiveData(mutableListOf())

  val frame1List: MutableLiveData<MutableList<Frame3RowModel>> = MutableLiveData(mutableListOf())
}
