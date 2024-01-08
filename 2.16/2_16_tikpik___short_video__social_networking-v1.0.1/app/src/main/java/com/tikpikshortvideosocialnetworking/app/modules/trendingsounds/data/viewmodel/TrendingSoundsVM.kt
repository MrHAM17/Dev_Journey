package com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.Autolayouthorizontal1RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.Autolayouthorizontal2RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.TrendingSoundsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TrendingSoundsVM : ViewModel(), KoinComponent {
  val trendingSoundsModel: MutableLiveData<TrendingSoundsModel> =
      MutableLiveData(TrendingSoundsModel())

  var navArguments: Bundle? = null

  val autoLayoutHorizontalList: MutableLiveData<MutableList<Autolayouthorizontal1RowModel>> =
      MutableLiveData(mutableListOf())

  val autoLayoutHorizontal1List: MutableLiveData<MutableList<Autolayouthorizontal2RowModel>> =
      MutableLiveData(mutableListOf())
}
