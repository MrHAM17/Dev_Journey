package com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentTopAgentsProfileDetailBinding
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.model.TopagentsprofiledetailRowModel
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.viewmodel.TopAgentsProfileDetailVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopAgentsProfileDetailFragment :
    BaseFragment<FragmentTopAgentsProfileDetailBinding>(R.layout.fragment_top_agents_profile_detail)
    {
  private val viewModel: TopAgentsProfileDetailVM by viewModels<TopAgentsProfileDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val topAgentsProfileDetailAdapter =
    TopAgentsProfileDetailAdapter(viewModel.topAgentsProfileDetailList.value?:mutableListOf())
    binding.recyclerTopAgentsProfileDetail.adapter = topAgentsProfileDetailAdapter
    topAgentsProfileDetailAdapter.setOnItemClickListener(
    object : TopAgentsProfileDetailAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      TopagentsprofiledetailRowModel) {
        onClickRecyclerTopAgentsProfileDetail(view, position, item)
      }
    }
    )
    viewModel.topAgentsProfileDetailList.observe(requireActivity()) {
      topAgentsProfileDetailAdapter.updateData(it)
    }
    binding.topAgentsProfileDetailVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTopAgentsProfileDetail(
    view: View,
    position: Int,
    item: TopagentsprofiledetailRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TOP_AGENTS_PROFILE_DETAIL_FRAGMENT"

  }
}
