package com.tikpikshortvideosocialnetworking.app.modules.viewers.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetViewersBinding
import com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.model.ViewersRowModel
import com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.viewmodel.ViewersVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ViewersBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetViewersBinding>(R.layout.bottomsheet_viewers) {
  private val viewModel: ViewersVM by viewModels<ViewersVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val viewersAdapter = ViewersAdapter(viewModel.viewersList.value?:mutableListOf())
    binding.recyclerViewers.adapter = viewersAdapter
    viewersAdapter.setOnItemClickListener(
    object : ViewersAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ViewersRowModel) {
        onClickRecyclerViewers(view, position, item)
      }
    }
    )
    viewModel.viewersList.observe(requireActivity()) {
      viewersAdapter.updateData(it)
    }
    binding.viewersVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerViewers(
    view: View,
    position: Int,
    item: ViewersRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "VIEWERS_BOTTOMSHEET"


      fun getInstance(bundle: Bundle?): ViewersBottomsheet {
        val fragment = ViewersBottomsheet()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
