package com.vertexrealestateapp.app.modules.filter.ui

import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseFragment
import com.vertexrealestateapp.app.databinding.FragmentFilterBinding
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMin1Model
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMin2Model
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMin3Model
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMinModel
import com.vertexrealestateapp.app.modules.filter.`data`.viewmodel.FilterVM
import kotlin.String
import kotlin.Unit

class FilterFragment : BaseFragment<FragmentFilterBinding>(R.layout.fragment_filter) {
  private val viewModel: FilterVM by viewModels<FilterVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    viewModel.spinnerMinList.value = mutableListOf(
    SpinnerMinModel("Item1"),
    SpinnerMinModel("Item2"),
    SpinnerMinModel("Item3"),
    SpinnerMinModel("Item4"),
    SpinnerMinModel("Item5")
    )
    val spinnerMinAdapter =
    SpinnerMinAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerMinList.value?:
    mutableListOf())
    binding.spinnerMin.adapter = spinnerMinAdapter
    viewModel.spinnerMin1List.value = mutableListOf(
    SpinnerMin1Model("Item1"),
    SpinnerMin1Model("Item2"),
    SpinnerMin1Model("Item3"),
    SpinnerMin1Model("Item4"),
    SpinnerMin1Model("Item5")
    )
    val spinnerMin1Adapter =
    SpinnerMin1Adapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerMin1List.value?:
    mutableListOf())
    binding.spinnerMin1.adapter = spinnerMin1Adapter
    viewModel.spinnerMin2List.value = mutableListOf(
    SpinnerMin2Model("Item1"),
    SpinnerMin2Model("Item2"),
    SpinnerMin2Model("Item3"),
    SpinnerMin2Model("Item4"),
    SpinnerMin2Model("Item5")
    )
    val spinnerMin2Adapter =
    SpinnerMin2Adapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerMin2List.value?:
    mutableListOf())
    binding.spinnerMin2.adapter = spinnerMin2Adapter
    viewModel.spinnerMin3List.value = mutableListOf(
    SpinnerMin3Model("Item1"),
    SpinnerMin3Model("Item2"),
    SpinnerMin3Model("Item3"),
    SpinnerMin3Model("Item4"),
    SpinnerMin3Model("Item5")
    )
    val spinnerMin3Adapter =
    SpinnerMin3Adapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerMin3List.value?:
    mutableListOf())
    binding.spinnerMin3.adapter = spinnerMin3Adapter
    binding.filterVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "FILTER_FRAGMENT"

  }
}
