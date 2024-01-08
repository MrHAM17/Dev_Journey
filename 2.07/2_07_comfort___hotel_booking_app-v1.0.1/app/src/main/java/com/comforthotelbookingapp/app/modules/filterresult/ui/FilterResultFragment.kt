package com.comforthotelbookingapp.app.modules.filterresult.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentFilterResultBinding
import com.comforthotelbookingapp.app.modules.filterresult.`data`.model.FilterresultRowModel
import com.comforthotelbookingapp.app.modules.filterresult.`data`.viewmodel.FilterResultVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FilterResultFragment :
    BaseFragment<FragmentFilterResultBinding>(R.layout.fragment_filter_result) {
  private val viewModel: FilterResultVM by viewModels<FilterResultVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val filterResultAdapter =
    FilterResultAdapter(viewModel.filterResultList.value?:mutableListOf())
    binding.recyclerFilterResult.adapter = filterResultAdapter
    filterResultAdapter.setOnItemClickListener(
    object : FilterResultAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FilterresultRowModel) {
        onClickRecyclerFilterResult(view, position, item)
      }
    }
    )
    viewModel.filterResultList.observe(requireActivity()) {
      filterResultAdapter.updateData(it)
    }
    binding.filterResultVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFilterResult(
    view: View,
    position: Int,
    item: FilterresultRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "FILTER_RESULT_FRAGMENT"

  }
}
