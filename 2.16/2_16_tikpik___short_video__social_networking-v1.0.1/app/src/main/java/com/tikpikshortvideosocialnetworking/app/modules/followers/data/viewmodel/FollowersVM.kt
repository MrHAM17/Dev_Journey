package com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.model.FollowersModel
import com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.model.FollowersRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FollowersVM : ViewModel(), KoinComponent {
  val followersModel: MutableLiveData<FollowersModel> = MutableLiveData(FollowersModel())

  var navArguments: Bundle? = null

  val followersList: MutableLiveData<MutableList<FollowersRowModel>> =
      MutableLiveData(mutableListOf())
}
