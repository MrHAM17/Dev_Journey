package com.hiredjobsearch.app.modules.language.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.language.`data`.model.ChinesesRowModel
import com.hiredjobsearch.app.modules.language.`data`.model.EnglishukRowModel
import com.hiredjobsearch.app.modules.language.`data`.model.LanguageModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class LanguageVM : ViewModel(), KoinComponent {
  val languageModel: MutableLiveData<LanguageModel> = MutableLiveData(LanguageModel())

  var navArguments: Bundle? = null

  val englishUKList: MutableLiveData<MutableList<EnglishukRowModel>> =
      MutableLiveData(mutableListOf())

  val chinesesList: MutableLiveData<MutableList<ChinesesRowModel>> =
      MutableLiveData(mutableListOf())
}
