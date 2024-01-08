package com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentWeeklyRankingBinding
import com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.model.WeeklyrankingRowModel
import com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.viewmodel.WeeklyRankingVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class WeeklyRankingFragment :
    BaseFragment<FragmentWeeklyRankingBinding>(R.layout.fragment_weekly_ranking) {
  private val viewModel: WeeklyRankingVM by viewModels<WeeklyRankingVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val weeklyRankingAdapter =
    WeeklyRankingAdapter(viewModel.weeklyRankingList.value?:mutableListOf())
    binding.recyclerWeeklyRanking.adapter = weeklyRankingAdapter
    weeklyRankingAdapter.setOnItemClickListener(
    object : WeeklyRankingAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : WeeklyrankingRowModel) {
        onClickRecyclerWeeklyRanking(view, position, item)
      }
    }
    )
    viewModel.weeklyRankingList.observe(requireActivity()) {
      weeklyRankingAdapter.updateData(it)
    }
    binding.weeklyRankingVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerWeeklyRanking(
    view: View,
    position: Int,
    item: WeeklyrankingRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "WEEKLY_RANKING_FRAGMENT"

  }
}
