package com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.model.Autolayoutvertical4RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.model.TrendingSoundsDetailsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TrendingSoundsDetailsVM : ViewModel(), KoinComponent {
  val trendingSoundsDetailsModel: MutableLiveData<TrendingSoundsDetailsModel> =
      MutableLiveData(TrendingSoundsDetailsModel())

  var navArguments: Bundle? = null

  val autoLayoutVerticalList: MutableLiveData<MutableList<Autolayoutvertical4RowModel>> =
      MutableLiveData(mutableListOf())
}
