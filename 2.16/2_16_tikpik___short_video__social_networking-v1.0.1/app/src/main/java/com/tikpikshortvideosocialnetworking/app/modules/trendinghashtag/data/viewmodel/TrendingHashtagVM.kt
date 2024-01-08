package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.Autolayouthorizontal3RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.Autolayouthorizontal4RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.TrendingHashtagModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TrendingHashtagVM : ViewModel(), KoinComponent {
  val trendingHashtagModel: MutableLiveData<TrendingHashtagModel> =
      MutableLiveData(TrendingHashtagModel())

  var navArguments: Bundle? = null

  val autoLayoutHorizontalList: MutableLiveData<MutableList<Autolayouthorizontal3RowModel>> =
      MutableLiveData(mutableListOf())

  val autoLayoutHorizontal1List: MutableLiveData<MutableList<Autolayouthorizontal4RowModel>> =
      MutableLiveData(mutableListOf())
}
