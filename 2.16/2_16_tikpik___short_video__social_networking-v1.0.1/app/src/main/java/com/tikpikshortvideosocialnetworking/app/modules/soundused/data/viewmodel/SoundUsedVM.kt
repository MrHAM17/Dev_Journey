package com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.model.SoundUsedModel
import com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.model.SoundusedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SoundUsedVM : ViewModel(), KoinComponent {
  val soundUsedModel: MutableLiveData<SoundUsedModel> = MutableLiveData(SoundUsedModel())

  var navArguments: Bundle? = null

  val soundUsedList: MutableLiveData<MutableList<SoundusedRowModel>> =
      MutableLiveData(mutableListOf())
}
