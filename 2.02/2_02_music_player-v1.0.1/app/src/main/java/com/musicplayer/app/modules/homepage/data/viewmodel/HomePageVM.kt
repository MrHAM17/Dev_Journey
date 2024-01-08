package com.musicplayer.app.modules.homepage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.homepage.`data`.model.HomePageModel
import com.musicplayer.app.modules.homepage.`data`.model.NewreleaseslistRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomePageVM : ViewModel(), KoinComponent {
  val homePageModel: MutableLiveData<HomePageModel> = MutableLiveData(HomePageModel())

  var navArguments: Bundle? = null

  val newReleasesListList: MutableLiveData<MutableList<NewreleaseslistRowModel>> =
      MutableLiveData(mutableListOf())
}
