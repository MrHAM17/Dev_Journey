package com.tikpikshortvideosocialnetworking.app.modules.golivetogether.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetGoLiveTogetherBinding
import com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.model.GolivetogetherRowModel
import com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.viewmodel.GoLiveTogetherVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class GoLiveTogetherBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetGoLiveTogetherBinding>(R.layout.bottomsheet_go_live_together)
    {
  private val viewModel: GoLiveTogetherVM by viewModels<GoLiveTogetherVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val goLiveTogetherAdapter =
    GoLiveTogetherAdapter(viewModel.goLiveTogetherList.value?:mutableListOf())
    binding.recyclerGoLiveTogether.adapter = goLiveTogetherAdapter
    goLiveTogetherAdapter.setOnItemClickListener(
    object : GoLiveTogetherAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : GolivetogetherRowModel) {
        onClickRecyclerGoLiveTogether(view, position, item)
      }
    }
    )
    viewModel.goLiveTogetherList.observe(requireActivity()) {
      goLiveTogetherAdapter.updateData(it)
    }
    binding.goLiveTogetherVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerGoLiveTogether(
    view: View,
    position: Int,
    item: GolivetogetherRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "GO_LIVE_TOGETHER_BOTTOMSHEET"

  }
}
