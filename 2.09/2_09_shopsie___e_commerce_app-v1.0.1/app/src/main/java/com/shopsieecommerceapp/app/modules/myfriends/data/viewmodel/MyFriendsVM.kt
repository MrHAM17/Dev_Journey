package com.shopsieecommerceapp.app.modules.myfriends.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.myfriends.`data`.model.MyFriendsModel
import com.shopsieecommerceapp.app.modules.myfriends.`data`.model.MyfriendsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MyFriendsVM : ViewModel(), KoinComponent {
  val myFriendsModel: MutableLiveData<MyFriendsModel> = MutableLiveData(MyFriendsModel())

  var navArguments: Bundle? = null

  val myFriendsList: MutableLiveData<MutableList<MyfriendsRowModel>> =
      MutableLiveData(mutableListOf())
}
