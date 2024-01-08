package com.tikpikshortvideosocialnetworking.app.modules.suggested.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentSuggestedBinding
import com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.model.SuggestedRowModel
import com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.viewmodel.SuggestedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SuggestedFragment : BaseFragment<FragmentSuggestedBinding>(R.layout.fragment_suggested) {
  private val viewModel: SuggestedVM by viewModels<SuggestedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val suggestedAdapter = SuggestedAdapter(viewModel.suggestedList.value?:mutableListOf())
    binding.recyclerSuggested.adapter = suggestedAdapter
    suggestedAdapter.setOnItemClickListener(
    object : SuggestedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SuggestedRowModel) {
        onClickRecyclerSuggested(view, position, item)
      }
    }
    )
    viewModel.suggestedList.observe(requireActivity()) {
      suggestedAdapter.updateData(it)
    }
    binding.suggestedVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSuggested(
    view: View,
    position: Int,
    item: SuggestedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SUGGESTED_FRAGMENT"

  }
}
