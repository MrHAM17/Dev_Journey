package com.hiredjobsearch.app.modules.saved.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentSavedBinding
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.ui.JobDetailsTabContainerActivity
import com.hiredjobsearch.app.modules.saved.`data`.model.SavedRowModel
import com.hiredjobsearch.app.modules.saved.`data`.viewmodel.SavedVM
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
    binding.imageImage.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerSaved(
    view: View,
    position: Int,
    item: SavedRowModel
  ): Unit {
    when(view.id) {
      R.id.linearBag ->  {
        onClickRecyclerSavedLinearBag(view, position, item)
      }
    }
  }

  fun onClickRecyclerSavedLinearBag(
    view: View,
    position: Int,
    item: SavedRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = JobDetailsTabContainerActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = JobDetailsTabContainerActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 ->  {
        val destIntent = JobDetailsTabContainerActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      3 ->  {
        val destIntent = JobDetailsTabContainerActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
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
