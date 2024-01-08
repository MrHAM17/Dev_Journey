package com.moviestreaming.app.modules.detailpageten.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.detailpageten.`data`.model.DetailPageTenModel
import com.moviestreaming.app.modules.detailpageten.`data`.model.Movies2RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DetailPageTenVM : ViewModel(), KoinComponent {
  val detailPageTenModel: MutableLiveData<DetailPageTenModel> =
      MutableLiveData(DetailPageTenModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies2RowModel>> = MutableLiveData(mutableListOf())
}
