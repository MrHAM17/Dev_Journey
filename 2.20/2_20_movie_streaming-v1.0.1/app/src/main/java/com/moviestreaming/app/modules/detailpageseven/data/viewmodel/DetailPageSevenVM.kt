package com.moviestreaming.app.modules.detailpageseven.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.detailpageseven.`data`.model.DetailPageSevenModel
import com.moviestreaming.app.modules.detailpageseven.`data`.model.MoviesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DetailPageSevenVM : ViewModel(), KoinComponent {
  val detailPageSevenModel: MutableLiveData<DetailPageSevenModel> =
      MutableLiveData(DetailPageSevenModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<MoviesRowModel>> = MutableLiveData(mutableListOf())
}
