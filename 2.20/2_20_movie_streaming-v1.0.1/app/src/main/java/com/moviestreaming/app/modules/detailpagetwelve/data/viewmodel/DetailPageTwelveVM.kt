package com.moviestreaming.app.modules.detailpagetwelve.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.detailpagetwelve.`data`.model.DetailPageTwelveModel
import com.moviestreaming.app.modules.detailpagetwelve.`data`.model.Movies4RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DetailPageTwelveVM : ViewModel(), KoinComponent {
  val detailPageTwelveModel: MutableLiveData<DetailPageTwelveModel> =
      MutableLiveData(DetailPageTwelveModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies4RowModel>> = MutableLiveData(mutableListOf())
}
