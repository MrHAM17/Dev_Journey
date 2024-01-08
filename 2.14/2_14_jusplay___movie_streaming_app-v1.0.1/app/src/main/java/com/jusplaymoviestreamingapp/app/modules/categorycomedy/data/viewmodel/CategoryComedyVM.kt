package com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.model.CategoryComedyModel
import com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.model.CategorycomedyRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CategoryComedyVM : ViewModel(), KoinComponent {
  val categoryComedyModel: MutableLiveData<CategoryComedyModel> =
      MutableLiveData(CategoryComedyModel())

  var navArguments: Bundle? = null

  val categoryComedyList: MutableLiveData<MutableList<CategorycomedyRowModel>> =
      MutableLiveData(mutableListOf())
}
