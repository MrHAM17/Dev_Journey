package com.moviestreaming.app.modules.detailpageeleven.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.detailpageeleven.`data`.model.DetailPageElevenModel
import com.moviestreaming.app.modules.detailpageeleven.`data`.model.Movies3RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DetailPageElevenVM : ViewModel(), KoinComponent {
  val detailPageElevenModel: MutableLiveData<DetailPageElevenModel> =
      MutableLiveData(DetailPageElevenModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies3RowModel>> = MutableLiveData(mutableListOf())
}
