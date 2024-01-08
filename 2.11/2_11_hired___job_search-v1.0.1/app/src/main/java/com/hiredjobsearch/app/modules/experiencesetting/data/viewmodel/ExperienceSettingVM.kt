package com.hiredjobsearch.app.modules.experiencesetting.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.experiencesetting.`data`.model.ExperienceSettingModel
import com.hiredjobsearch.app.modules.experiencesetting.`data`.model.ExperiencesettingRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExperienceSettingVM : ViewModel(), KoinComponent {
  val experienceSettingModel: MutableLiveData<ExperienceSettingModel> =
      MutableLiveData(ExperienceSettingModel())

  var navArguments: Bundle? = null

  val experienceSettingList: MutableLiveData<MutableList<ExperiencesettingRowModel>> =
      MutableLiveData(mutableListOf())
}
