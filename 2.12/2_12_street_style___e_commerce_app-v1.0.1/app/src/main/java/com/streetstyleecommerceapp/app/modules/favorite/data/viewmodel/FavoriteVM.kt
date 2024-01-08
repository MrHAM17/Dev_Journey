package com.streetstyleecommerceapp.app.modules.favorite.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.streetstyleecommerceapp.app.modules.favorite.`data`.model.FavoriteModel
import com.streetstyleecommerceapp.app.modules.favorite.`data`.model.FavoriteRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FavoriteVM : ViewModel(), KoinComponent {
  val favoriteModel: MutableLiveData<FavoriteModel> = MutableLiveData(FavoriteModel())

  var navArguments: Bundle? = null

  val favoriteList: MutableLiveData<MutableList<FavoriteRowModel>> =
      MutableLiveData(mutableListOf())
}
