package com.jusplaymoviestreamingapp.app.modules.search.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentSearchBinding
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.Frame2RowModel
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.Frame3RowModel
import com.jusplaymoviestreamingapp.app.modules.search.`data`.viewmodel.SearchVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchFragment : BaseFragment<FragmentSearchBinding>(R.layout.fragment_search) {
  private val viewModel: SearchVM by viewModels<SearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame2RowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    val frame1Adapter = Frame1Adapter(viewModel.frame1List.value?:mutableListOf())
    binding.recyclerFrame1.adapter = frame1Adapter
    frame1Adapter.setOnItemClickListener(
    object : Frame1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame3RowModel) {
        onClickRecyclerFrame1(view, position, item)
      }
    }
    )
    viewModel.frame1List.observe(requireActivity()) {
      frame1Adapter.updateData(it)
    }
    binding.searchVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFrame1(
    view: View,
    position: Int,
    item: Frame3RowModel
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
      const val TAG: String = "SEARCH_FRAGMENT"


      fun getInstance(bundle: Bundle?): SearchFragment {
        val fragment = SearchFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
