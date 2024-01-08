package com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.model.GoLiveTogetherModel
import com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.model.GolivetogetherRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class GoLiveTogetherVM : ViewModel(), KoinComponent {
  val goLiveTogetherModel: MutableLiveData<GoLiveTogetherModel> =
      MutableLiveData(GoLiveTogetherModel())

  var navArguments: Bundle? = null

  val goLiveTogetherList: MutableLiveData<MutableList<GolivetogetherRowModel>> =
      MutableLiveData(mutableListOf())
}
