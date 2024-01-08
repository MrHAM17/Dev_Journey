package com.fashionistaecommerceapp.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseFragment
import com.fashionistaecommerceapp.app.databinding.FragmentHomeBinding
import com.fashionistaecommerceapp.app.modules.home.`data`.model.Frame2RowModel
import com.fashionistaecommerceapp.app.modules.home.`data`.model.Frame3RowModel
import com.fashionistaecommerceapp.app.modules.home.`data`.viewmodel.HomeVM
import com.fashionistaecommerceapp.app.modules.popularitems.ui.PopularItemsActivity
import com.fashionistaecommerceapp.app.modules.productview.ui.ProductViewActivity
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
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll.setOnClickListener {
      val destIntent = PopularItemsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame2RowModel
  ): Unit {
    when(view.id) {
      R.id.linearCard -> {
        onClickRecyclerFrameLinearCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerFrame1(
    view: View,
    position: Int,
    item: Frame3RowModel
  ): Unit {
    when(view.id) {
      R.id.linearCard -> {
        onClickRecyclerFrame1LinearCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerFrameLinearCard(
    view: View,
    position: Int,
    item: Frame2RowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = ProductViewActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 -> {
        val destIntent = ProductViewActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 -> {
        val destIntent = ProductViewActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerFrame1LinearCard(
    view: View,
    position: Int,
    item: Frame3RowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = ProductViewActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 -> {
        val destIntent = ProductViewActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 -> {
        val destIntent = ProductViewActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
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
