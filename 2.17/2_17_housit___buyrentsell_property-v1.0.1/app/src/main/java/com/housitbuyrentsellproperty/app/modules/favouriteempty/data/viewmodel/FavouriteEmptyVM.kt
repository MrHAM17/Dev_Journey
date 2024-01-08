package com.housitbuyrentsellproperty.app.modules.favouriteempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.favouriteempty.`data`.model.FavouriteEmptyModel
import org.koin.core.KoinComponent

class FavouriteEmptyVM : ViewModel(), KoinComponent {
  val favouriteEmptyModel: MutableLiveData<FavouriteEmptyModel> =
      MutableLiveData(FavouriteEmptyModel())

  var navArguments: Bundle? = null
}
