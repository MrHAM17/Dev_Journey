package com.helthiotelehealth.app.modules.topdoctor.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.helthiotelehealth.app.modules.topdoctor.`data`.model.TopDoctorModel
import com.helthiotelehealth.app.modules.topdoctor.`data`.model.TopdoctorRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopDoctorVM : ViewModel(), KoinComponent {
  val topDoctorModel: MutableLiveData<TopDoctorModel> = MutableLiveData(TopDoctorModel())

  var navArguments: Bundle? = null

  val topDoctorList: MutableLiveData<MutableList<TopdoctorRowModel>> =
      MutableLiveData(mutableListOf())
}
