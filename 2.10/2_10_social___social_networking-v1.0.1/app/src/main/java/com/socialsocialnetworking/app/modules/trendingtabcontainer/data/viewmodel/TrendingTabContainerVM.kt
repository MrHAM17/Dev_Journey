package com.socialsocialnetworking.app.modules.trendingtabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.trendingtabcontainer.`data`.model.Stories2RowModel
import com.socialsocialnetworking.app.modules.trendingtabcontainer.`data`.model.TrendingTabContainerModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TrendingTabContainerVM : ViewModel(), KoinComponent {
  val trendingTabContainerModel: MutableLiveData<TrendingTabContainerModel> =
      MutableLiveData(TrendingTabContainerModel())

  var navArguments: Bundle? = null

  val storiesList: MutableLiveData<MutableList<Stories2RowModel>> = MutableLiveData(mutableListOf())
}
