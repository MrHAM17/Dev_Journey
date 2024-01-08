package com.jusplaymoviestreamingapp.app.modules.about.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.about.`data`.model.AboutModel
import com.jusplaymoviestreamingapp.app.modules.about.`data`.model.AboutRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AboutVM : ViewModel(), KoinComponent {
  val aboutModel: MutableLiveData<AboutModel> = MutableLiveData(AboutModel())

  var navArguments: Bundle? = null

  val aboutList: MutableLiveData<MutableList<AboutRowModel>> = MutableLiveData(mutableListOf())
}
