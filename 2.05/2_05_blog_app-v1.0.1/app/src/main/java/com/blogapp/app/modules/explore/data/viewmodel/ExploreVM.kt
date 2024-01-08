package com.blogapp.app.modules.explore.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.explore.`data`.model.ExploreModel
import com.blogapp.app.modules.explore.`data`.model.Stories1RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreVM : ViewModel(), KoinComponent {
  val exploreModel: MutableLiveData<ExploreModel> = MutableLiveData(ExploreModel())

  var navArguments: Bundle? = null

  val storiesList: MutableLiveData<MutableList<Stories1RowModel>> = MutableLiveData(mutableListOf())
}
