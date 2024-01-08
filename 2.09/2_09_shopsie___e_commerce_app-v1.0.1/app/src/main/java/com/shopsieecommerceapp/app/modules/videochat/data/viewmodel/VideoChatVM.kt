package com.shopsieecommerceapp.app.modules.videochat.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.videochat.`data`.model.VideoChatModel
import org.koin.core.KoinComponent

class VideoChatVM : ViewModel(), KoinComponent {
  val videoChatModel: MutableLiveData<VideoChatModel> = MutableLiveData(VideoChatModel())

  var navArguments: Bundle? = null
}
