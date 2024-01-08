package com.hiredjobsearch.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentHomeBinding
import com.hiredjobsearch.app.extensions.loadFragment
import com.hiredjobsearch.app.modules.home.`data`.model.EightyeightRowModel
import com.hiredjobsearch.app.modules.home.`data`.model.FrameRowModel
import com.hiredjobsearch.app.modules.home.`data`.viewmodel.HomeVM
import com.hiredjobsearch.app.modules.jobdetails.ui.JobDetailsFragment
import com.hiredjobsearch.app.modules.search.ui.SearchActivity
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
      override fun onItemClick(view:View, position:Int, item : FrameRowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    val eightyEightAdapter =
    EightyEightAdapter(viewModel.eightyEightList.value?:mutableListOf())
    binding.recyclerEightyEight.adapter = eightyEightAdapter
    eightyEightAdapter.setOnItemClickListener(
    object : EightyEightAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EightyeightRowModel) {
        onClickRecyclerEightyEight(view, position, item)
      }
    }
    )
    viewModel.eightyEightList.observe(requireActivity()) {
      eightyEightAdapter.updateData(it)
    }
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.searchViewSearch.setOnClickListener {
      val destIntent = SearchActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: FrameRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerEightyEight(
    view: View,
    position: Int,
    item: EightyeightRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSettings -> {
        onClickRecyclerEightyEightLinearSettings(view, position, item)
      }
    }
  }

  fun onClickRecyclerEightyEightLinearSettings(
    view: View,
    position: Int,
    item: EightyeightRowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destFragment = JobDetailsFragment.getInstance(null)
        requireActivity().loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments,
        tag = JobDetailsFragment.TAG,
        addToBackStack = true,
        add = false,
        enter = null,
        exit = null,
        )
        requireActivity().onBackPressed()
      }
      1 -> {
        val destFragment = JobDetailsFragment.getInstance(null)
        requireActivity().loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments,
        tag = JobDetailsFragment.TAG,
        addToBackStack = true,
        add = false,
        enter = null,
        exit = null,
        )
        requireActivity().onBackPressed()
      }
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
