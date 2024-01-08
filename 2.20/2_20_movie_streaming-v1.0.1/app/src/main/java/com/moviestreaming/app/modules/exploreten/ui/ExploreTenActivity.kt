package com.moviestreaming.app.modules.exploreten.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityExploreTenBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.exploreten.`data`.model.Trending1RowModel
import com.moviestreaming.app.modules.exploreten.`data`.model.Trending2RowModel
import com.moviestreaming.app.modules.exploreten.`data`.model.TrendingRowModel
import com.moviestreaming.app.modules.exploreten.`data`.viewmodel.ExploreTenVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreTenActivity : BaseActivity<ActivityExploreTenBinding>(R.layout.activity_explore_ten) {
  private val viewModel: ExploreTenVM by viewModels<ExploreTenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val trendingAdapter = TrendingAdapter(viewModel.trendingList.value?:mutableListOf())
    binding.recyclerTrending.adapter = trendingAdapter
    trendingAdapter.setOnItemClickListener(
    object : TrendingAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TrendingRowModel) {
        onClickRecyclerTrending(view, position, item)
      }
    }
    )
    viewModel.trendingList.observe(this) {
      trendingAdapter.updateData(it)
    }
    val trending1Adapter = Trending1Adapter(viewModel.trending1List.value?:mutableListOf())
    binding.recyclerTrending1.adapter = trending1Adapter
    trending1Adapter.setOnItemClickListener(
    object : Trending1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Trending1RowModel) {
        onClickRecyclerTrending1(view, position, item)
      }
    }
    )
    viewModel.trending1List.observe(this) {
      trending1Adapter.updateData(it)
    }
    val trending2Adapter = Trending2Adapter(viewModel.trending2List.value?:mutableListOf())
    binding.recyclerTrending2.adapter = trending2Adapter
    trending2Adapter.setOnItemClickListener(
    object : Trending2Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Trending2RowModel) {
        onClickRecyclerTrending2(view, position, item)
      }
    }
    )
    viewModel.trending2List.observe(this) {
      trending2Adapter.updateData(it)
    }
    binding.exploreTenVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTrending(
    view: View,
    position: Int,
    item: TrendingRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  fun onClickRecyclerTrending1(
    view: View,
    position: Int,
    item: Trending1RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  fun onClickRecyclerTrending2(
    view: View,
    position: Int,
    item: Trending2RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "EXPLORE_TEN_ACTIVITY"

  }
}
