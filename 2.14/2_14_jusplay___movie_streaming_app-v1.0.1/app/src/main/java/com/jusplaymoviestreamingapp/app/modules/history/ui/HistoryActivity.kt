package com.jusplaymoviestreamingapp.app.modules.history.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityHistoryBinding
import com.jusplaymoviestreamingapp.app.modules.history.`data`.model.HistoryRowModel
import com.jusplaymoviestreamingapp.app.modules.history.`data`.viewmodel.HistoryVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HistoryActivity : BaseActivity<ActivityHistoryBinding>(R.layout.activity_history) {
  private val viewModel: HistoryVM by viewModels<HistoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
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
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
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


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, HistoryActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
