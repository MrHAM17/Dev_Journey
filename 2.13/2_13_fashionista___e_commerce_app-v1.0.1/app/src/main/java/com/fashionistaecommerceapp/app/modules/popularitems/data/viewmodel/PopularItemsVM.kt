package com.fashionistaecommerceapp.app.modules.popularitems.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.popularitems.`data`.model.PopularItemsModel
import com.fashionistaecommerceapp.app.modules.popularitems.`data`.model.PopularitemsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PopularItemsVM : ViewModel(), KoinComponent {
  val popularItemsModel: MutableLiveData<PopularItemsModel> = MutableLiveData(PopularItemsModel())

  var navArguments: Bundle? = null

  val popularItemsList: MutableLiveData<MutableList<PopularitemsRowModel>> =
      MutableLiveData(mutableListOf())
}
