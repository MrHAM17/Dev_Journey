package com.moviestreaming.app.modules.detailpagenine.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.detailpagenine.`data`.model.DetailPageNineModel
import com.moviestreaming.app.modules.detailpagenine.`data`.model.Movies1RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DetailPageNineVM : ViewModel(), KoinComponent {
  val detailPageNineModel: MutableLiveData<DetailPageNineModel> =
      MutableLiveData(DetailPageNineModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies1RowModel>> = MutableLiveData(mutableListOf())
}
