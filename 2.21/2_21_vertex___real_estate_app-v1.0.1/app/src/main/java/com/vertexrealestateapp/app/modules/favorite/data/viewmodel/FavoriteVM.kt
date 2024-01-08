package com.vertexrealestateapp.app.modules.favorite.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.favorite.`data`.model.FavoriteModel
import org.koin.core.KoinComponent

class FavoriteVM : ViewModel(), KoinComponent {
  val favoriteModel: MutableLiveData<FavoriteModel> = MutableLiveData(FavoriteModel())

  var navArguments: Bundle? = null
}
