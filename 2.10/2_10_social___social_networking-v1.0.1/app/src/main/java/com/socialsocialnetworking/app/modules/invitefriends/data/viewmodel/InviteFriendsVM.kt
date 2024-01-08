package com.socialsocialnetworking.app.modules.invitefriends.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.invitefriends.`data`.model.FriendlistRowModel
import com.socialsocialnetworking.app.modules.invitefriends.`data`.model.InviteFriendsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class InviteFriendsVM : ViewModel(), KoinComponent {
  val inviteFriendsModel: MutableLiveData<InviteFriendsModel> =
      MutableLiveData(InviteFriendsModel())

  var navArguments: Bundle? = null

  val friendListList: MutableLiveData<MutableList<FriendlistRowModel>> =
      MutableLiveData(mutableListOf())
}
