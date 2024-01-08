package com.vertexrealestateapp.app.modules.message.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.message.`data`.model.MessageModel
import com.vertexrealestateapp.app.modules.message.`data`.model.MessagesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessageVM : ViewModel(), KoinComponent {
  val messageModel: MutableLiveData<MessageModel> = MutableLiveData(MessageModel())

  var navArguments: Bundle? = null

  val messagesList: MutableLiveData<MutableList<MessagesRowModel>> =
      MutableLiveData(mutableListOf())
}
