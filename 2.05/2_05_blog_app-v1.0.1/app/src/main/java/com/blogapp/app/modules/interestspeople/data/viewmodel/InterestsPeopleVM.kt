package com.blogapp.app.modules.interestspeople.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.interestspeople.`data`.model.InterestsPeopleModel
import com.blogapp.app.modules.interestspeople.`data`.model.InterestspeopleRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class InterestsPeopleVM : ViewModel(), KoinComponent {
  val interestsPeopleModel: MutableLiveData<InterestsPeopleModel> =
      MutableLiveData(InterestsPeopleModel())

  var navArguments: Bundle? = null

  val interestsPeopleList: MutableLiveData<MutableList<InterestspeopleRowModel>> =
      MutableLiveData(mutableListOf())
}
