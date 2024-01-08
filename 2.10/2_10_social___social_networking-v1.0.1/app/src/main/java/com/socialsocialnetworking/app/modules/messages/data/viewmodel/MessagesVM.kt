package com.socialsocialnetworking.app.modules.messages.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.messages.`data`.model.MessagesModel
import com.socialsocialnetworking.app.modules.messages.`data`.model.MessageslistRowModel
import com.socialsocialnetworking.app.modules.messages.`data`.model.Stories1RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessagesVM : ViewModel(), KoinComponent {
  val messagesModel: MutableLiveData<MessagesModel> = MutableLiveData(MessagesModel())

  var navArguments: Bundle? = null

  val storiesList: MutableLiveData<MutableList<Stories1RowModel>> = MutableLiveData(mutableListOf())

  val messagesListList: MutableLiveData<MutableList<MessageslistRowModel>> =
      MutableLiveData(mutableListOf())
}
