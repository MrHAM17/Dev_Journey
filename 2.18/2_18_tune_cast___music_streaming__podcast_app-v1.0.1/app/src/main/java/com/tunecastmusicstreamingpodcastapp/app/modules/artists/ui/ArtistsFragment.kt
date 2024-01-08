package com.tunecastmusicstreamingpodcastapp.app.modules.artists.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentArtistsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.model.Artists1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.viewmodel.ArtistsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArtistsFragment : BaseFragment<FragmentArtistsBinding>(R.layout.fragment_artists) {
  private val viewModel: ArtistsVM by viewModels<ArtistsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val artistsAdapter = ArtistsAdapter(viewModel.artistsList.value?:mutableListOf())
    binding.recyclerArtists.adapter = artistsAdapter
    artistsAdapter.setOnItemClickListener(
    object : ArtistsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Artists1RowModel) {
        onClickRecyclerArtists(view, position, item)
      }
    }
    )
    viewModel.artistsList.observe(requireActivity()) {
      artistsAdapter.updateData(it)
    }
    binding.artistsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerArtists(
    view: View,
    position: Int,
    item: Artists1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ARTISTS_FRAGMENT"

  }
}
