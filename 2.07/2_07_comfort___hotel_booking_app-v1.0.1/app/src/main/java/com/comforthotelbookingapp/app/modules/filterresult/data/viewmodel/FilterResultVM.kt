package com.comforthotelbookingapp.app.modules.filterresult.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.filterresult.`data`.model.FilterResultModel
import com.comforthotelbookingapp.app.modules.filterresult.`data`.model.FilterresultRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FilterResultVM : ViewModel(), KoinComponent {
  val filterResultModel: MutableLiveData<FilterResultModel> = MutableLiveData(FilterResultModel())

  var navArguments: Bundle? = null

  val filterResultList: MutableLiveData<MutableList<FilterresultRowModel>> =
      MutableLiveData(mutableListOf())
}
