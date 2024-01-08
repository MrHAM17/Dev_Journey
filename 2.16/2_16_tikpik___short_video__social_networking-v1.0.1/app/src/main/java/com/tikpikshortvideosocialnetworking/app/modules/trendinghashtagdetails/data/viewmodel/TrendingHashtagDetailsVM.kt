package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.model.Autolayoutvertical5RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.model.TrendingHashtagDetailsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TrendingHashtagDetailsVM : ViewModel(), KoinComponent {
  val trendingHashtagDetailsModel: MutableLiveData<TrendingHashtagDetailsModel> =
      MutableLiveData(TrendingHashtagDetailsModel())

  var navArguments: Bundle? = null

  val autoLayoutVerticalList: MutableLiveData<MutableList<Autolayoutvertical5RowModel>> =
      MutableLiveData(mutableListOf())
}
