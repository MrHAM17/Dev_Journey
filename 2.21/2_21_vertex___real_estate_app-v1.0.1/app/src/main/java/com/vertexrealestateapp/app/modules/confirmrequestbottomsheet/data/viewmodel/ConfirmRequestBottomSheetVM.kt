package com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.model.ConfirmRequestBottomSheetModel
import com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.model.ConfirmrequestbottomsheetRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ConfirmRequestBottomSheetVM : ViewModel(), KoinComponent {
  val confirmRequestBottomSheetModel: MutableLiveData<ConfirmRequestBottomSheetModel> =
      MutableLiveData(ConfirmRequestBottomSheetModel())

  var navArguments: Bundle? = null

  val confirmrequestBottomsheetList: MutableLiveData<MutableList<ConfirmrequestbottomsheetRowModel>>
      = MutableLiveData(mutableListOf())
}
