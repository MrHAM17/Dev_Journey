package com.vertexrealestateapp.app.modules.messagechat.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.messagechat.`data`.model.MessageChatModel
import org.koin.core.KoinComponent

class MessageChatVM : ViewModel(), KoinComponent {
  val messageChatModel: MutableLiveData<MessageChatModel> = MutableLiveData(MessageChatModel())

  var navArguments: Bundle? = null
}
