package com.jusplaymoviestreamingapp.app.modules.saved.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentSavedBinding
import com.jusplaymoviestreamingapp.app.modules.saved.`data`.model.SavedRowModel
import com.jusplaymoviestreamingapp.app.modules.saved.`data`.viewmodel.SavedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SavedFragment : BaseFragment<FragmentSavedBinding>(R.layout.fragment_saved) {
  private val viewModel: SavedVM by viewModels<SavedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val savedAdapter = SavedAdapter(viewModel.savedList.value?:mutableListOf())
    binding.recyclerSaved.adapter = savedAdapter
    savedAdapter.setOnItemClickListener(
    object : SavedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SavedRowModel) {
        onClickRecyclerSaved(view, position, item)
      }
    }
    )
    viewModel.savedList.observe(requireActivity()) {
      savedAdapter.updateData(it)
    }
    binding.savedVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSaved(
    view: View,
    position: Int,
    item: SavedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SAVED_FRAGMENT"


    fun getInstance(bundle: Bundle?): SavedFragment {
      val fragment = SavedFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
