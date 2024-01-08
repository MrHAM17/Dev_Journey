package com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.Autolayouthorizontal5RowModel
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.MessagesModel
import com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model.TheresavarnesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MessagesVM : ViewModel(), KoinComponent {
  val messagesModel: MutableLiveData<MessagesModel> = MutableLiveData(MessagesModel())

  var navArguments: Bundle? = null

  val autoLayoutHorizontalList: MutableLiveData<MutableList<Autolayouthorizontal5RowModel>> =
      MutableLiveData(mutableListOf())

  val theresaVarnesList: MutableLiveData<MutableList<TheresavarnesRowModel>> =
      MutableLiveData(mutableListOf())
}
