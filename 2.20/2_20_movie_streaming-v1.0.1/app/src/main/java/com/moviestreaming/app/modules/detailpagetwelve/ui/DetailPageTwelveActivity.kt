package com.moviestreaming.app.modules.detailpagetwelve.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDetailPageTwelveBinding
import com.moviestreaming.app.modules.channelfour.ui.ChannelFourActivity
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.detailpagetwelve.`data`.model.Movies4RowModel
import com.moviestreaming.app.modules.detailpagetwelve.`data`.viewmodel.DetailPageTwelveVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DetailPageTwelveActivity :
    BaseActivity<ActivityDetailPageTwelveBinding>(R.layout.activity_detail_page_twelve) {
  private val viewModel: DetailPageTwelveVM by viewModels<DetailPageTwelveVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies4RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.detailPageTwelveVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnWatchNow.setOnClickListener {
      val destIntent = ChannelFourActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: Movies4RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "DETAIL_PAGE_TWELVE_ACTIVITY"

  }
}
