package com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.model.SeeLiveModel
import com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.model.SeeliveRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SeeLiveVM : ViewModel(), KoinComponent {
  val seeLiveModel: MutableLiveData<SeeLiveModel> = MutableLiveData(SeeLiveModel())

  var navArguments: Bundle? = null

  val seeLiveList: MutableLiveData<MutableList<SeeliveRowModel>> = MutableLiveData(mutableListOf())
}
