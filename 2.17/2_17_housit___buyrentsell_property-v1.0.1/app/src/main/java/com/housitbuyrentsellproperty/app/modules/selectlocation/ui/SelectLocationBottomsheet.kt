package com.housitbuyrentsellproperty.app.modules.selectlocation.ui

import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetSelectLocationBinding
import com.housitbuyrentsellproperty.app.modules.selectlocation.`data`.viewmodel.SelectLocationVM
import kotlin.String
import kotlin.Unit

class SelectLocationBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSelectLocationBinding>(R.layout.bottomsheet_select_location)
    {
  private val viewModel: SelectLocationVM by viewModels<SelectLocationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.selectLocationVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SELECT_LOCATION_BOTTOMSHEET"

  }
}
