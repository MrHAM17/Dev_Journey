package com.safebankmobilebankingapp.app.modules.history.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityHistoryBinding
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventyfiveRowModel
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventynineRowModel
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventyoneRowModel
import com.safebankmobilebankingapp.app.modules.history.`data`.viewmodel.HistoryVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HistoryActivity : BaseActivity<ActivityHistoryBinding>(R.layout.activity_history) {
  private val viewModel: HistoryVM by viewModels<HistoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val seventyNineAdapter =
    SeventyNineAdapter(viewModel.seventyNineList.value?:mutableListOf())
    binding.recyclerSeventyNine.adapter = seventyNineAdapter
    seventyNineAdapter.setOnItemClickListener(
    object : SeventyNineAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeventynineRowModel) {
        onClickRecyclerSeventyNine(view, position, item)
      }
    }
    )
    viewModel.seventyNineList.observe(this) {
      seventyNineAdapter.updateData(it)
    }
    val seventyFiveAdapter =
    SeventyFiveAdapter(viewModel.seventyFiveList.value?:mutableListOf())
    binding.recyclerSeventyFive.adapter = seventyFiveAdapter
    seventyFiveAdapter.setOnItemClickListener(
    object : SeventyFiveAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeventyfiveRowModel) {
        onClickRecyclerSeventyFive(view, position, item)
      }
    }
    )
    viewModel.seventyFiveList.observe(this) {
      seventyFiveAdapter.updateData(it)
    }
    val seventyOneAdapter = SeventyOneAdapter(viewModel.seventyOneList.value?:mutableListOf())
    binding.recyclerSeventyOne.adapter = seventyOneAdapter
    seventyOneAdapter.setOnItemClickListener(
    object : SeventyOneAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeventyoneRowModel) {
        onClickRecyclerSeventyOne(view, position, item)
      }
    }
    )
    viewModel.seventyOneList.observe(this) {
      seventyOneAdapter.updateData(it)
    }
    binding.historyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSeventyNine(
    view: View,
    position: Int,
    item: SeventynineRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerSeventyFive(
    view: View,
    position: Int,
    item: SeventyfiveRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerSeventyOne(
    view: View,
    position: Int,
    item: SeventyoneRowModel
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
