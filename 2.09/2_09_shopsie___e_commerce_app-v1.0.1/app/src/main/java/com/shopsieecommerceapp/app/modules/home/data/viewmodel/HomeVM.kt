package com.shopsieecommerceapp.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.home.`data`.model.EightytwoRowModel
import com.shopsieecommerceapp.app.modules.home.`data`.model.HomeModel
import com.shopsieecommerceapp.app.modules.home.`data`.model.SixtysevenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  val sixtySevenList: MutableLiveData<MutableList<SixtysevenRowModel>> =
      MutableLiveData(mutableListOf())

  val eightyTwoList: MutableLiveData<MutableList<EightytwoRowModel>> =
      MutableLiveData(mutableListOf())
}
