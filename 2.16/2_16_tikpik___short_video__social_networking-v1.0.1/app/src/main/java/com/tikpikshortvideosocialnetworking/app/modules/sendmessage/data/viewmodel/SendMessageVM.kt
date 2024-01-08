package com.tikpikshortvideosocialnetworking.app.modules.sendmessage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.sendmessage.`data`.model.SendMessageModel
import org.koin.core.KoinComponent

class SendMessageVM : ViewModel(), KoinComponent {
  val sendMessageModel: MutableLiveData<SendMessageModel> = MutableLiveData(SendMessageModel())

  var navArguments: Bundle? = null
}
