package com.comforthotelbookingapp.app.modules.hoteldetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.FramenineteenRowModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.HotelDetailsModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.PhotosRowModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.SpinnerTypeButtonTypeModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HotelDetailsVM : ViewModel(), KoinComponent {
  val hotelDetailsModel: MutableLiveData<HotelDetailsModel> = MutableLiveData(HotelDetailsModel())

  var navArguments: Bundle? = null

  val spinnerTypeButtonTypeList: MutableLiveData<MutableList<SpinnerTypeButtonTypeModel>> =
      MutableLiveData()

  val photosList: MutableLiveData<MutableList<PhotosRowModel>> = MutableLiveData(mutableListOf())

  val frameNineteenList: MutableLiveData<MutableList<FramenineteenRowModel>> =
      MutableLiveData(mutableListOf())
}
