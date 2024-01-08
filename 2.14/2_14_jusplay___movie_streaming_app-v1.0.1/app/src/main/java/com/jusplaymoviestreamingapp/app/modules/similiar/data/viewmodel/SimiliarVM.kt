package com.jusplaymoviestreamingapp.app.modules.similiar.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.similiar.`data`.model.SimiliarModel
import com.jusplaymoviestreamingapp.app.modules.similiar.`data`.model.SimiliarRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SimiliarVM : ViewModel(), KoinComponent {
  val similiarModel: MutableLiveData<SimiliarModel> = MutableLiveData(SimiliarModel())

  var navArguments: Bundle? = null

  val similiarList: MutableLiveData<MutableList<SimiliarRowModel>> =
      MutableLiveData(mutableListOf())
}
