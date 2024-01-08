package com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.AllActivityModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.Followback1RowModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.FollowbackRowModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.SpinnerChooseModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AllActivityVM : ViewModel(), KoinComponent {
  val allActivityModel: MutableLiveData<AllActivityModel> = MutableLiveData(AllActivityModel())

  var navArguments: Bundle? = null

  val spinnerChooseList: MutableLiveData<MutableList<SpinnerChooseModel>> = MutableLiveData()

  val followBackList: MutableLiveData<MutableList<FollowbackRowModel>> =
      MutableLiveData(mutableListOf())

  val followBack1List: MutableLiveData<MutableList<Followback1RowModel>> =
      MutableLiveData(mutableListOf())
}
