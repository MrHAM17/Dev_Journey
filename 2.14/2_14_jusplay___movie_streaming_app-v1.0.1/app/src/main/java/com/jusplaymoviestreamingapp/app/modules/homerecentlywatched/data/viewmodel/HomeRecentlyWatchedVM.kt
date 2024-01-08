package com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model.Frame1RowModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model.FrameRowModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model.HomeRecentlyWatchedModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeRecentlyWatchedVM : ViewModel(), KoinComponent {
  val homeRecentlyWatchedModel: MutableLiveData<HomeRecentlyWatchedModel> =
      MutableLiveData(HomeRecentlyWatchedModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<FrameRowModel>> = MutableLiveData(mutableListOf())

  val frame1List: MutableLiveData<MutableList<Frame1RowModel>> = MutableLiveData(mutableListOf())
}
