package com.moviestreaming.app.modules.detailpagenine.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDetailPageNineBinding
import com.moviestreaming.app.modules.detailpagenine.`data`.model.Movies1RowModel
import com.moviestreaming.app.modules.detailpagenine.`data`.viewmodel.DetailPageNineVM
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DetailPageNineActivity :
    BaseActivity<ActivityDetailPageNineBinding>(R.layout.activity_detail_page_nine) {
  private val viewModel: DetailPageNineVM by viewModels<DetailPageNineVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies1RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.detailPageNineVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.imageThumbnailImage.setOnClickListener {
      val destIntent = DetailPageSevenActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: Movies1RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "DETAIL_PAGE_NINE_ACTIVITY"

  }
}
