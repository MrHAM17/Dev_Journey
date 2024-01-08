package com.shopsieecommerceapp.app.modules.singlestory.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.singlestory.`data`.model.SingleStoryModel
import org.koin.core.KoinComponent

class SingleStoryVM : ViewModel(), KoinComponent {
  val singleStoryModel: MutableLiveData<SingleStoryModel> = MutableLiveData(SingleStoryModel())

  var navArguments: Bundle? = null
}
