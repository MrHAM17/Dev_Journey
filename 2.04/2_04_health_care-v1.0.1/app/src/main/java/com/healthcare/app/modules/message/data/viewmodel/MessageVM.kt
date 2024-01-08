package com.healthcare.app.modules.message.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.healthcare.app.modules.message.`data`.model.ChatRowModel
import com.healthcare.app.modules.message.`data`.model.MessageModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessageVM : ViewModel(), KoinComponent {
  val messageModel: MutableLiveData<MessageModel> = MutableLiveData(MessageModel())

  var navArguments: Bundle? = null

  val chatList: MutableLiveData<MutableList<ChatRowModel>> = MutableLiveData(mutableListOf())
}
