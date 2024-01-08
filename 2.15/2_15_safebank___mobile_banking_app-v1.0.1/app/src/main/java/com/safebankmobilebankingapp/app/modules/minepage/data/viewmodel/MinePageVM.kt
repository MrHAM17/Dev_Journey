package com.safebankmobilebankingapp.app.modules.minepage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.FifteenRowModel
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.MinePageModel
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.ThirtytwoRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MinePageVM : ViewModel(), KoinComponent {
  val minePageModel: MutableLiveData<MinePageModel> = MutableLiveData(MinePageModel())

  var navArguments: Bundle? = null

  val thirtyTwoList: MutableLiveData<MutableList<ThirtytwoRowModel>> =
      MutableLiveData(mutableListOf())

  val fifteenList: MutableLiveData<MutableList<FifteenRowModel>> = MutableLiveData(mutableListOf())
}
