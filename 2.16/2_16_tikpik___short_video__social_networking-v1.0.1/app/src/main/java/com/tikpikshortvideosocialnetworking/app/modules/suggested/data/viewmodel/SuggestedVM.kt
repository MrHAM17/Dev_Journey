package com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.model.SuggestedModel
import com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.model.SuggestedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SuggestedVM : ViewModel(), KoinComponent {
  val suggestedModel: MutableLiveData<SuggestedModel> = MutableLiveData(SuggestedModel())

  var navArguments: Bundle? = null

  val suggestedList: MutableLiveData<MutableList<SuggestedRowModel>> =
      MutableLiveData(mutableListOf())
}
