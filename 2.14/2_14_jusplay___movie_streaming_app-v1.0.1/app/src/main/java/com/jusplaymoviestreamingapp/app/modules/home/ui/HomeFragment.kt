package com.jusplaymoviestreamingapp.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentHomeBinding
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.AladdinRowModel
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.Frame4RowModel
import com.jusplaymoviestreamingapp.app.modules.home.`data`.viewmodel.HomeVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame4RowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    val aladdinAdapter = AladdinAdapter(viewModel.aladdinList.value?:mutableListOf())
    binding.recyclerAladdin.adapter = aladdinAdapter
    aladdinAdapter.setOnItemClickListener(
    object : AladdinAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AladdinRowModel) {
        onClickRecyclerAladdin(view, position, item)
      }
    }
    )
    viewModel.aladdinList.observe(requireActivity()) {
      aladdinAdapter.updateData(it)
    }
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame4RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerAladdin(
    view: View,
    position: Int,
    item: AladdinRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HOME_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeFragment {
      val fragment = HomeFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
