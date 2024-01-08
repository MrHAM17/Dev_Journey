package com.vertexrealestateapp.app.modules.recentlyviews.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.recentlyviews.`data`.model.RecentlyViewsModel
import org.koin.core.KoinComponent

class RecentlyViewsVM : ViewModel(), KoinComponent {
  val recentlyViewsModel: MutableLiveData<RecentlyViewsModel> =
      MutableLiveData(RecentlyViewsModel())

  var navArguments: Bundle? = null
}
