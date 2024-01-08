package com.socialsocialnetworking.app.modules.trendingposts.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.trendingposts.`data`.model.TrendingPostsModel
import org.koin.core.KoinComponent

class TrendingPostsVM : ViewModel(), KoinComponent {
  val trendingPostsModel: MutableLiveData<TrendingPostsModel> =
      MutableLiveData(TrendingPostsModel())

  var navArguments: Bundle? = null
}
