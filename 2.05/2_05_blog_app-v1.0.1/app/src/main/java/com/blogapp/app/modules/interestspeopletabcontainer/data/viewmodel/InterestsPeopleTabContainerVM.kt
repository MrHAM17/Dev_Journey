package com.blogapp.app.modules.interestspeopletabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.interestspeopletabcontainer.`data`.model.InterestsPeopleTabContainerModel
import org.koin.core.KoinComponent

class InterestsPeopleTabContainerVM : ViewModel(), KoinComponent {
  val interestsPeopleTabContainerModel: MutableLiveData<InterestsPeopleTabContainerModel> =
      MutableLiveData(InterestsPeopleTabContainerModel())

  var navArguments: Bundle? = null
}
