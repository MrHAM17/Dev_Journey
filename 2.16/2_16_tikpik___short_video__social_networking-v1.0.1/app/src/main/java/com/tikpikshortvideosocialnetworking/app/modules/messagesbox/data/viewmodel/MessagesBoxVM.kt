package com.tikpikshortvideosocialnetworking.app.modules.messagesbox.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.messagesbox.`data`.model.MessagesBoxModel
import org.koin.core.KoinComponent

class MessagesBoxVM : ViewModel(), KoinComponent {
  val messagesBoxModel: MutableLiveData<MessagesBoxModel> = MutableLiveData(MessagesBoxModel())

  var navArguments: Bundle? = null
}
