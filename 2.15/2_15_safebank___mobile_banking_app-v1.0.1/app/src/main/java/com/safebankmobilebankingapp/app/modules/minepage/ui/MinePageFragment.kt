package com.safebankmobilebankingapp.app.modules.minepage.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentMinePageBinding
import com.safebankmobilebankingapp.app.extensions.loadFragment
import com.safebankmobilebankingapp.app.modules.history.ui.HistoryActivity
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.FifteenRowModel
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.ThirtytwoRowModel
import com.safebankmobilebankingapp.app.modules.minepage.`data`.viewmodel.MinePageVM
import com.safebankmobilebankingapp.app.modules.transfer.ui.TransferFragment
import com.safebankmobilebankingapp.app.modules.transferrequest.ui.TransferRequestActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MinePageFragment : BaseFragment<FragmentMinePageBinding>(R.layout.fragment_mine_page) {
  private val viewModel: MinePageVM by viewModels<MinePageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val thirtyTwoAdapter = ThirtyTwoAdapter(viewModel.thirtyTwoList.value?:mutableListOf())
    binding.recyclerThirtyTwo.adapter = thirtyTwoAdapter
    thirtyTwoAdapter.setOnItemClickListener(
    object : ThirtyTwoAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ThirtytwoRowModel) {
        onClickRecyclerThirtyTwo(view, position, item)
      }
    }
    )
    viewModel.thirtyTwoList.observe(requireActivity()) {
      thirtyTwoAdapter.updateData(it)
    }
    val fifteenAdapter = FifteenAdapter(viewModel.fifteenList.value?:mutableListOf())
    binding.recyclerFifteen.adapter = fifteenAdapter
    fifteenAdapter.setOnItemClickListener(
    object : FifteenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FifteenRowModel) {
        onClickRecyclerFifteen(view, position, item)
      }
    }
    )
    viewModel.fifteenList.observe(requireActivity()) {
      fifteenAdapter.updateData(it)
    }
    binding.minePageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnTransfer.setOnClickListener {
      val destFragment = TransferFragment.getInstance(null)
      requireActivity().loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = TransferFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
      requireActivity().onBackPressed()
    }
    binding.txtSeeAll.setOnClickListener {
      val destIntent = HistoryActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.btnRequest.setOnClickListener {
      val destIntent = TransferRequestActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerThirtyTwo(
    view: View,
    position: Int,
    item: ThirtytwoRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFifteen(
    view: View,
    position: Int,
    item: FifteenRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MINE_PAGE_FRAGMENT"


    fun getInstance(bundle: Bundle?): MinePageFragment {
      val fragment = MinePageFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
