package com.socialsocialnetworking.app.modules.stories.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.stories.`data`.model.FrameRowModel
import com.socialsocialnetworking.app.modules.stories.`data`.model.StoriesModel
import com.socialsocialnetworking.app.modules.stories.`data`.model.StoriesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class StoriesVM : ViewModel(), KoinComponent {
  val storiesModel: MutableLiveData<StoriesModel> = MutableLiveData(StoriesModel())

  var navArguments: Bundle? = null

  val storiesList: MutableLiveData<MutableList<StoriesRowModel>> = MutableLiveData(mutableListOf())

  val frameList: MutableLiveData<MutableList<FrameRowModel>> = MutableLiveData(mutableListOf())
}
