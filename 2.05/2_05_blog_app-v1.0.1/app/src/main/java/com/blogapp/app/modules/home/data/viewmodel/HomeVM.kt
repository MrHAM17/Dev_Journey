package com.blogapp.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.`data`.model.Model
import com.blogapp.app.modules.home.`data`.model.FramethirtysixRowModel
import com.blogapp.app.modules.home.`data`.model.HomeModel
import com.blogapp.app.modules.home.`data`.model.StoriesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  public var includedModel: MutableLiveData<Model> = MutableLiveData(Model())

  val frameThirtySixList: MutableLiveData<MutableList<FramethirtysixRowModel>> =
      MutableLiveData(mutableListOf())

  val storiesList: MutableLiveData<MutableList<StoriesRowModel>> = MutableLiveData(mutableListOf())
}
