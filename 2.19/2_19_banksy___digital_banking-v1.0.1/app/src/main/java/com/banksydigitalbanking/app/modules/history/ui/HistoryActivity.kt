package com.banksydigitalbanking.app.modules.history.ui

import android.view.View
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityHistoryBinding
import com.banksydigitalbanking.app.modules.history.`data`.model.HistoryRowModel
import com.banksydigitalbanking.app.modules.history.`data`.model.SpinnerFavoriteModel
import com.banksydigitalbanking.app.modules.history.`data`.viewmodel.HistoryVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HistoryActivity : BaseActivity<ActivityHistoryBinding>(R.layout.activity_history) {
  private val viewModel: HistoryVM by viewModels<HistoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerFavoriteList.value = mutableListOf(
    SpinnerFavoriteModel("Item1"),
    SpinnerFavoriteModel("Item2"),
    SpinnerFavoriteModel("Item3"),
    SpinnerFavoriteModel("Item4"),
    SpinnerFavoriteModel("Item5")
    )
    val spinnerFavoriteAdapter =
    SpinnerFavoriteAdapter(this,R.layout.spinner_item,viewModel.spinnerFavoriteList.value?:
    mutableListOf())
    binding.spinnerFavorite.adapter = spinnerFavoriteAdapter
    val historyAdapter = HistoryAdapter(viewModel.historyList.value?:mutableListOf())
    binding.recyclerHistory.adapter = historyAdapter
    historyAdapter.setOnItemClickListener(
    object : HistoryAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HistoryRowModel) {
        onClickRecyclerHistory(view, position, item)
      }
    }
    )
    viewModel.historyList.observe(this) {
      historyAdapter.updateData(it)
    }
    binding.historyVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerHistory(
    view: View,
    position: Int,
    item: HistoryRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HISTORY_ACTIVITY"

  }
}
