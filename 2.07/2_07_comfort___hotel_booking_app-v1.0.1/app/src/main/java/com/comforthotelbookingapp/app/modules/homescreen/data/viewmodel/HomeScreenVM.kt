package com.comforthotelbookingapp.app.modules.homescreen.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.homescreen.`data`.model.HomeScreenModel
import com.comforthotelbookingapp.app.modules.homescreen.`data`.model.HotelsRowModel
import com.comforthotelbookingapp.app.modules.homescreen.`data`.model.SixtyRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeScreenVM : ViewModel(), KoinComponent {
  val homeScreenModel: MutableLiveData<HomeScreenModel> = MutableLiveData(HomeScreenModel())

  var navArguments: Bundle? = null

  val hotelsList: MutableLiveData<MutableList<HotelsRowModel>> = MutableLiveData(mutableListOf())

  val sixtyList: MutableLiveData<MutableList<SixtyRowModel>> = MutableLiveData(mutableListOf())
}
