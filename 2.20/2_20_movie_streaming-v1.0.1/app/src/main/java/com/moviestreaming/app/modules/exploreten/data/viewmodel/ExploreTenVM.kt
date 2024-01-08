package com.moviestreaming.app.modules.exploreten.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.exploreten.`data`.model.ExploreTenModel
import com.moviestreaming.app.modules.exploreten.`data`.model.Trending1RowModel
import com.moviestreaming.app.modules.exploreten.`data`.model.Trending2RowModel
import com.moviestreaming.app.modules.exploreten.`data`.model.TrendingRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreTenVM : ViewModel(), KoinComponent {
  val exploreTenModel: MutableLiveData<ExploreTenModel> = MutableLiveData(ExploreTenModel())

  var navArguments: Bundle? = null

  val trendingList: MutableLiveData<MutableList<TrendingRowModel>> =
      MutableLiveData(mutableListOf())

  val trending1List: MutableLiveData<MutableList<Trending1RowModel>> =
      MutableLiveData(mutableListOf())

  val trending2List: MutableLiveData<MutableList<Trending2RowModel>> =
      MutableLiveData(mutableListOf())
}
