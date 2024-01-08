package com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPopularArtistsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.model.PopularartistsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.viewmodel.PopularArtistsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PopularArtistsActivity :
    BaseActivity<ActivityPopularArtistsBinding>(R.layout.activity_popular_artists) {
  private val viewModel: PopularArtistsVM by viewModels<PopularArtistsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val popularArtistsAdapter =
    PopularArtistsAdapter(viewModel.popularArtistsList.value?:mutableListOf())
    binding.recyclerPopularArtists.adapter = popularArtistsAdapter
    popularArtistsAdapter.setOnItemClickListener(
    object : PopularArtistsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PopularartistsRowModel) {
        onClickRecyclerPopularArtists(view, position, item)
      }
    }
    )
    viewModel.popularArtistsList.observe(this) {
      popularArtistsAdapter.updateData(it)
    }
    binding.popularArtistsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPopularArtists(
    view: View,
    position: Int,
    item: PopularartistsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "POPULAR_ARTISTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PopularArtistsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
