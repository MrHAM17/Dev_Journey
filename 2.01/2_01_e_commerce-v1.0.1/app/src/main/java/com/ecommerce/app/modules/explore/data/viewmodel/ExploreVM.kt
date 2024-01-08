package com.ecommerce.app.modules.explore.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.explore.`data`.model.Categories1RowModel
import com.ecommerce.app.modules.explore.`data`.model.CategoriesRowModel
import com.ecommerce.app.modules.explore.`data`.model.ExploreModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreVM : ViewModel(), KoinComponent {
  val exploreModel: MutableLiveData<ExploreModel> = MutableLiveData(ExploreModel())

  var navArguments: Bundle? = null

  val categoriesList: MutableLiveData<MutableList<CategoriesRowModel>> =
      MutableLiveData(mutableListOf())

  val categories1List: MutableLiveData<MutableList<Categories1RowModel>> =
      MutableLiveData(mutableListOf())
}
