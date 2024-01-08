package com.tikpikshortvideosocialnetworking.app.modules.totallikes.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.totallikes.`data`.model.TotalLikesModel
import org.koin.core.KoinComponent

class TotalLikesVM : ViewModel(), KoinComponent {
  val totalLikesModel: MutableLiveData<TotalLikesModel> = MutableLiveData(TotalLikesModel())

  var navArguments: Bundle? = null
}
