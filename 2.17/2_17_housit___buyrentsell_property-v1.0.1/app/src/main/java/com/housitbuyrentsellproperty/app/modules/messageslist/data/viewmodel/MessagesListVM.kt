package com.housitbuyrentsellproperty.app.modules.messageslist.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.messageslist.`data`.model.MessagesListModel
import org.koin.core.KoinComponent

class MessagesListVM : ViewModel(), KoinComponent {
  val messagesListModel: MutableLiveData<MessagesListModel> = MutableLiveData(MessagesListModel())

  var navArguments: Bundle? = null
}
