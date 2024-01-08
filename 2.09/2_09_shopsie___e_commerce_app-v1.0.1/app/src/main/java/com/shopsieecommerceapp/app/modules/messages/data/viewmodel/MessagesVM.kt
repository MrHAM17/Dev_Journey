package com.shopsieecommerceapp.app.modules.messages.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.messages.`data`.model.MessagesModel
import com.shopsieecommerceapp.app.modules.messages.`data`.model.MessagesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessagesVM : ViewModel(), KoinComponent {
  val messagesModel: MutableLiveData<MessagesModel> = MutableLiveData(MessagesModel())

  var navArguments: Bundle? = null

  val messagesList: MutableLiveData<MutableList<MessagesRowModel>> =
      MutableLiveData(mutableListOf())
}
