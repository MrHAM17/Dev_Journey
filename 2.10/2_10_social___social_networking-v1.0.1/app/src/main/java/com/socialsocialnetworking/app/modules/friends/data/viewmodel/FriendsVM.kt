package com.socialsocialnetworking.app.modules.friends.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.friends.`data`.model.EightythreeRowModel
import com.socialsocialnetworking.app.modules.friends.`data`.model.FollowRowModel
import com.socialsocialnetworking.app.modules.friends.`data`.model.FriendsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FriendsVM : ViewModel(), KoinComponent {
  val friendsModel: MutableLiveData<FriendsModel> = MutableLiveData(FriendsModel())

  var navArguments: Bundle? = null

  val eightyThreeList: MutableLiveData<MutableList<EightythreeRowModel>> =
      MutableLiveData(mutableListOf())

  val followList: MutableLiveData<MutableList<FollowRowModel>> = MutableLiveData(mutableListOf())
}
