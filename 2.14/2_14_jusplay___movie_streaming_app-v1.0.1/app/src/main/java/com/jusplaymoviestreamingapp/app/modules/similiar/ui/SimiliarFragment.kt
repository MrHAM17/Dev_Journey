package com.jusplaymoviestreamingapp.app.modules.similiar.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentSimiliarBinding
import com.jusplaymoviestreamingapp.app.modules.similiar.`data`.model.SimiliarRowModel
import com.jusplaymoviestreamingapp.app.modules.similiar.`data`.viewmodel.SimiliarVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SimiliarFragment : BaseFragment<FragmentSimiliarBinding>(R.layout.fragment_similiar) {
  private val viewModel: SimiliarVM by viewModels<SimiliarVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val similiarAdapter = SimiliarAdapter(viewModel.similiarList.value?:mutableListOf())
    binding.recyclerSimiliar.adapter = similiarAdapter
    similiarAdapter.setOnItemClickListener(
    object : SimiliarAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SimiliarRowModel) {
        onClickRecyclerSimiliar(view, position, item)
      }
    }
    )
    viewModel.similiarList.observe(requireActivity()) {
      similiarAdapter.updateData(it)
    }
    binding.similiarVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSimiliar(
    view: View,
    position: Int,
    item: SimiliarRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SIMILIAR_FRAGMENT"

  }
}
