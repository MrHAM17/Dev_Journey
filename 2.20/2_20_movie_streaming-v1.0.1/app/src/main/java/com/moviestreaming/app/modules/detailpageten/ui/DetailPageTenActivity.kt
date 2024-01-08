package com.moviestreaming.app.modules.detailpageten.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDetailPageTenBinding
import com.moviestreaming.app.modules.channelfour.ui.ChannelFourActivity
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.detailpageten.`data`.model.Movies2RowModel
import com.moviestreaming.app.modules.detailpageten.`data`.viewmodel.DetailPageTenVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DetailPageTenActivity :
    BaseActivity<ActivityDetailPageTenBinding>(R.layout.activity_detail_page_ten) {
  private val viewModel: DetailPageTenVM by viewModels<DetailPageTenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies2RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.detailPageTenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.imageThumbnailImage.setOnClickListener {
      val destIntent = DetailPageSevenActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnPlayNow.setOnClickListener {
      val destIntent = ChannelFourActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: Movies2RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "DETAIL_PAGE_TEN_ACTIVITY"

  }
}
