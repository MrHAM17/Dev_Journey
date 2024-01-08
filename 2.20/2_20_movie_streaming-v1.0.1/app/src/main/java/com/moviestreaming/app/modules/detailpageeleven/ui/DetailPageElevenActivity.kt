package com.moviestreaming.app.modules.detailpageeleven.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDetailPageElevenBinding
import com.moviestreaming.app.modules.channelfour.ui.ChannelFourActivity
import com.moviestreaming.app.modules.detailpageeleven.`data`.model.Movies3RowModel
import com.moviestreaming.app.modules.detailpageeleven.`data`.viewmodel.DetailPageElevenVM
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DetailPageElevenActivity :
    BaseActivity<ActivityDetailPageElevenBinding>(R.layout.activity_detail_page_eleven) {
  private val viewModel: DetailPageElevenVM by viewModels<DetailPageElevenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies3RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.detailPageElevenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnWatchNow.setOnClickListener {
      val destIntent = ChannelFourActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageThumbnailImage.setOnClickListener {
      val destIntent = DetailPageSevenActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: Movies3RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "DETAIL_PAGE_ELEVEN_ACTIVITY"

  }
}
