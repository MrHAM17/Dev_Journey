package com.tikpikshortvideosocialnetworking.app.modules.followerstabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.followerstabcontainer.`data`.model.FollowersTabContainerModel
import org.koin.core.KoinComponent

class FollowersTabContainerVM : ViewModel(), KoinComponent {
  val followersTabContainerModel: MutableLiveData<FollowersTabContainerModel> =
      MutableLiveData(FollowersTabContainerModel())

  var navArguments: Bundle? = null
}
