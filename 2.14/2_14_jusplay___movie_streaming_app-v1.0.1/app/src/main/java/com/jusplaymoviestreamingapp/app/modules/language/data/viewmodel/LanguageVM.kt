package com.jusplaymoviestreamingapp.app.modules.language.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.language.`data`.model.LanguageModel
import com.jusplaymoviestreamingapp.app.modules.language.`data`.model.LanguageRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class LanguageVM : ViewModel(), KoinComponent {
  val languageModel: MutableLiveData<LanguageModel> = MutableLiveData(LanguageModel())

  var navArguments: Bundle? = null

  val languageList: MutableLiveData<MutableList<LanguageRowModel>> =
      MutableLiveData(mutableListOf())
}
