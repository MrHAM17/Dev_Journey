package com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.model.RisingStarsModel
import com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.model.RisingstarsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class RisingStarsVM : ViewModel(), KoinComponent {
  val risingStarsModel: MutableLiveData<RisingStarsModel> = MutableLiveData(RisingStarsModel())

  var navArguments: Bundle? = null

  val risingstarsList: MutableLiveData<MutableList<RisingstarsRowModel>> =
      MutableLiveData(mutableListOf())
}
