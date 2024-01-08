package com.hiredjobsearch.app.modules.messageaction.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.messageaction.`data`.model.MessageActionModel
import com.hiredjobsearch.app.modules.messageaction.`data`.model.MessageactionRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessageActionVM : ViewModel(), KoinComponent {
  val messageActionModel: MutableLiveData<MessageActionModel> =
      MutableLiveData(MessageActionModel())

  var navArguments: Bundle? = null

  val messageActionList: MutableLiveData<MutableList<MessageactionRowModel>> =
      MutableLiveData(mutableListOf())
}
