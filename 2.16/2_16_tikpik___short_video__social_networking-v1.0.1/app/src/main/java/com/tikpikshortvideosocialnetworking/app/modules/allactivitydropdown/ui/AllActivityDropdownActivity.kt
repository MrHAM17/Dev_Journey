package com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.ui

import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityAllActivityDropdownBinding
import com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.`data`.model.SpinnerChooseModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.`data`.viewmodel.AllVMDropdownVM
import kotlin.String
import kotlin.Unit

class AllActivityDropdownActivity :
    BaseActivity<ActivityAllActivityDropdownBinding>(R.layout.activity_all_activity_dropdown) {
  private val viewModel: AllVMDropdownVM by viewModels<AllVMDropdownVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerChooseList.value = mutableListOf(
    SpinnerChooseModel("Item1"),
    SpinnerChooseModel("Item2"),
    SpinnerChooseModel("Item3"),
    SpinnerChooseModel("Item4"),
    SpinnerChooseModel("Item5")
    )
    val spinnerChooseAdapter =
    SpinnerChooseAdapter(this,R.layout.spinner_item,viewModel.spinnerChooseList.value?:
    mutableListOf())
    binding.spinnerChoose.adapter = spinnerChooseAdapter
    binding.allVMDropdownVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ALL_ACTIVITY_DROPDOWN_ACTIVITY"

  }
}
