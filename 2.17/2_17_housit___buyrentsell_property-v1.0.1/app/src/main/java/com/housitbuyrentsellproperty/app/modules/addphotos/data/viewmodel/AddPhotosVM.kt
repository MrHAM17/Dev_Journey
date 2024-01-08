package com.housitbuyrentsellproperty.app.modules.addphotos.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.addphotos.`data`.model.AddPhotosModel
import com.housitbuyrentsellproperty.app.modules.addphotos.`data`.model.GalleryRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddPhotosVM : ViewModel(), KoinComponent {
  val addPhotosModel: MutableLiveData<AddPhotosModel> = MutableLiveData(AddPhotosModel())

  var navArguments: Bundle? = null

  val galleryList: MutableLiveData<MutableList<GalleryRowModel>> = MutableLiveData(mutableListOf())
}
