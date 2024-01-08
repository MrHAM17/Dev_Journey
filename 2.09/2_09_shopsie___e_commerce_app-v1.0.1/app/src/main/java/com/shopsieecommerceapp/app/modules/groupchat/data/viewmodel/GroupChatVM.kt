package com.shopsieecommerceapp.app.modules.groupchat.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.groupchat.`data`.model.GroupChatModel
import org.koin.core.KoinComponent

class GroupChatVM : ViewModel(), KoinComponent {
  val groupChatModel: MutableLiveData<GroupChatModel> = MutableLiveData(GroupChatModel())

  var navArguments: Bundle? = null
}
