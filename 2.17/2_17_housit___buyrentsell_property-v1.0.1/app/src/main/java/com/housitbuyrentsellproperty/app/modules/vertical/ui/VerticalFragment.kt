package com.housitbuyrentsellproperty.app.modules.vertical.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentVerticalBinding
import com.housitbuyrentsellproperty.app.modules.horizontal.ui.HorizontalActivity
import com.housitbuyrentsellproperty.app.modules.vertical.`data`.model.VerticalRowModel
import com.housitbuyrentsellproperty.app.modules.vertical.`data`.viewmodel.VerticalVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class VerticalFragment : BaseFragment<FragmentVerticalBinding>(R.layout.fragment_vertical) {
  private val viewModel: VerticalVM by viewModels<VerticalVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val verticalAdapter = VerticalAdapter(viewModel.verticalList.value?:mutableListOf())
    binding.recyclerVertical.adapter = verticalAdapter
    verticalAdapter.setOnItemClickListener(
    object : VerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : VerticalRowModel) {
        onClickRecyclerVertical(view, position, item)
      }
    }
    )
    viewModel.verticalList.observe(requireActivity()) {
      verticalAdapter.updateData(it)
    }
    binding.verticalVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.frameButtonShow.setOnClickListener {
      val destIntent = HorizontalActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerVertical(
    view: View,
    position: Int,
    item: VerticalRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "VERTICAL_FRAGMENT"


    fun getInstance(bundle: Bundle?): VerticalFragment {
      val fragment = VerticalFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
