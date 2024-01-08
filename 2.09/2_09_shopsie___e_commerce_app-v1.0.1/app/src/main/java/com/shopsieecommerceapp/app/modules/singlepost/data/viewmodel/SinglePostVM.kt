package com.shopsieecommerceapp.app.modules.singlepost.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.singlepost.`data`.model.SinglePostModel
import org.koin.core.KoinComponent

class SinglePostVM : ViewModel(), KoinComponent {
  val singlePostModel: MutableLiveData<SinglePostModel> = MutableLiveData(SinglePostModel())

  var navArguments: Bundle? = null
}
