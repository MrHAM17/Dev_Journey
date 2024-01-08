package com.moviestreaming.app.modules.detailpageseven.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDetailPageSevenBinding
import com.moviestreaming.app.modules.channelfour.ui.ChannelFourActivity
import com.moviestreaming.app.modules.detailpageseven.`data`.model.MoviesRowModel
import com.moviestreaming.app.modules.detailpageseven.`data`.viewmodel.DetailPageSevenVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DetailPageSevenActivity :
    BaseActivity<ActivityDetailPageSevenBinding>(R.layout.activity_detail_page_seven) {
  private val viewModel: DetailPageSevenVM by viewModels<DetailPageSevenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MoviesRowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    binding.detailPageSevenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnPlayNow.setOnClickListener {
      val destIntent = ChannelFourActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: MoviesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "DETAIL_PAGE_SEVEN_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DetailPageSevenActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
