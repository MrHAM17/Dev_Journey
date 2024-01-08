package com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.model.AddNewPropertyMeetWithAAgentModel
import com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.model.TimeRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewPropertyMeetWithAAgentVM : ViewModel(), KoinComponent {
  val addNewPropertyMeetWithAAgentModel: MutableLiveData<AddNewPropertyMeetWithAAgentModel> =
      MutableLiveData(AddNewPropertyMeetWithAAgentModel())

  var navArguments: Bundle? = null

  val timeList: MutableLiveData<MutableList<TimeRowModel>> = MutableLiveData(mutableListOf())
}
