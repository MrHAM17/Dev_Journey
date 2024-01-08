package com.moviestreaming.app.modules.detailpageeight.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDetailPageEightBinding
import com.moviestreaming.app.modules.channelfour.ui.ChannelFourActivity
import com.moviestreaming.app.modules.detailpageeight.`data`.model.Movies5RowModel
import com.moviestreaming.app.modules.detailpageeight.`data`.viewmodel.DetailPageEightVM
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DetailPageEightActivity :
    BaseActivity<ActivityDetailPageEightBinding>(R.layout.activity_detail_page_eight) {
  private val viewModel: DetailPageEightVM by viewModels<DetailPageEightVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies5RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.detailPageEightVM = viewModel
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
    item: Movies5RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "DETAIL_PAGE_EIGHT_ACTIVITY"

  }
}
