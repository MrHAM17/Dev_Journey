package com.blogapp.app.modules.intereststopics.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.intereststopics.`data`.model.InterestsTopicsModel
import com.blogapp.app.modules.intereststopics.`data`.model.IntereststopicsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class InterestsTopicsVM : ViewModel(), KoinComponent {
  val interestsTopicsModel: MutableLiveData<InterestsTopicsModel> =
      MutableLiveData(InterestsTopicsModel())

  var navArguments: Bundle? = null

  val interestsTopicsList: MutableLiveData<MutableList<IntereststopicsRowModel>> =
      MutableLiveData(mutableListOf())
}
