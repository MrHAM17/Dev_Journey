package com.jusplaymoviestreamingapp.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.AladdinRowModel
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.Frame4RowModel
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.HomeModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame4RowModel>> = MutableLiveData(mutableListOf())

  val aladdinList: MutableLiveData<MutableList<AladdinRowModel>> = MutableLiveData(mutableListOf())
}
