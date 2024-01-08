package com.helthiotelehealth.app.modules.messagehistory.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.helthiotelehealth.app.modules.messagehistory.`data`.model.MessageHistoryModel
import com.helthiotelehealth.app.modules.messagehistory.`data`.model.MessagehistoryRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessageHistoryVM : ViewModel(), KoinComponent {
  val messageHistoryModel: MutableLiveData<MessageHistoryModel> =
      MutableLiveData(MessageHistoryModel())

  var navArguments: Bundle? = null

  val messageHistoryList: MutableLiveData<MutableList<MessagehistoryRowModel>> =
      MutableLiveData(mutableListOf())
}
