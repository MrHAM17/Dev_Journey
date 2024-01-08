package com.moviestreaming.app.modules.detailpageeight.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.detailpageeight.`data`.model.DetailPageEightModel
import com.moviestreaming.app.modules.detailpageeight.`data`.model.Movies5RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DetailPageEightVM : ViewModel(), KoinComponent {
  val detailPageEightModel: MutableLiveData<DetailPageEightModel> =
      MutableLiveData(DetailPageEightModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies5RowModel>> = MutableLiveData(mutableListOf())
}
