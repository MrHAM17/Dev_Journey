package com.socialsocialnetworking.app.modules.storiescontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.storiescontainer.`data`.model.StoriesContainerModel
import org.koin.core.KoinComponent

class StoriesContainerVM : ViewModel(), KoinComponent {
  val storiesContainerModel: MutableLiveData<StoriesContainerModel> =
      MutableLiveData(StoriesContainerModel())

  var navArguments: Bundle? = null
}
