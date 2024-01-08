package com.shopsieecommerceapp.app.modules.newpost.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.newpost.`data`.model.NewPostModel
import org.koin.core.KoinComponent

class NewPostVM : ViewModel(), KoinComponent {
  val newPostModel: MutableLiveData<NewPostModel> = MutableLiveData(NewPostModel())

  var navArguments: Bundle? = null
}
