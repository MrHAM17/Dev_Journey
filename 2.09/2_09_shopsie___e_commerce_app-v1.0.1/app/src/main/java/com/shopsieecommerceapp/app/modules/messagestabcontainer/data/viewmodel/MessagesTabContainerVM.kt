package com.shopsieecommerceapp.app.modules.messagestabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.messagestabcontainer.`data`.model.MessagesTabContainerModel
import org.koin.core.KoinComponent

class MessagesTabContainerVM : ViewModel(), KoinComponent {
  val messagesTabContainerModel: MutableLiveData<MessagesTabContainerModel> =
      MutableLiveData(MessagesTabContainerModel())

  var navArguments: Bundle? = null
}
