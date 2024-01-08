package com.moviestreaming.app.modules.channelfive.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityChannelFiveBinding
import com.moviestreaming.app.modules.channelfive.`data`.model.Movies6RowModel
import com.moviestreaming.app.modules.channelfive.`data`.viewmodel.ChannelFiveVM
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ChannelFiveActivity : BaseActivity<ActivityChannelFiveBinding>(R.layout.activity_channel_five)
    {
  private val viewModel: ChannelFiveVM by viewModels<ChannelFiveVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies6RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.channelFiveVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: Movies6RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerMoviesLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerMoviesLinearMovieCard(
    view: View,
    position: Int,
    item: Movies6RowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "CHANNEL_FIVE_ACTIVITY"

  }
}
