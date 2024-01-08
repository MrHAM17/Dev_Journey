package com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.model.FindFriendsModel
import com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.model.FindfriendsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FindFriendsVM : ViewModel(), KoinComponent {
  val findFriendsModel: MutableLiveData<FindFriendsModel> = MutableLiveData(FindFriendsModel())

  var navArguments: Bundle? = null

  val findFriendsList: MutableLiveData<MutableList<FindfriendsRowModel>> =
      MutableLiveData(mutableListOf())
}
