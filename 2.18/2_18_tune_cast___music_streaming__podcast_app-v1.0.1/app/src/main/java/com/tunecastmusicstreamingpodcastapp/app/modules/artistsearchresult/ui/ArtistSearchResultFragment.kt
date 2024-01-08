package com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentArtistSearchResultBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.ui.ArtistDetailsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.`data`.model.ArtistsearchresultRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.`data`.viewmodel.ArtistSearchResultVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArtistSearchResultFragment :
    BaseFragment<FragmentArtistSearchResultBinding>(R.layout.fragment_artist_search_result) {
  private val viewModel: ArtistSearchResultVM by viewModels<ArtistSearchResultVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val artistSearchResultAdapter =
    ArtistSearchResultAdapter(viewModel.artistSearchResultList.value?:mutableListOf())
    binding.recyclerArtistSearchResult.adapter = artistSearchResultAdapter
    artistSearchResultAdapter.setOnItemClickListener(
    object : ArtistSearchResultAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArtistsearchresultRowModel) {
        onClickRecyclerArtistSearchResult(view, position, item)
      }
    }
    )
    viewModel.artistSearchResultList.observe(requireActivity()) {
      artistSearchResultAdapter.updateData(it)
    }
    binding.artistSearchResultVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerArtistSearchResult(
    view: View,
    position: Int,
    item: ArtistsearchresultRowModel
  ): Unit {
    when(view.id) {
      R.id.linearArtist ->  {
        onClickRecyclerArtistSearchResultLinearArtist(view, position, item)
      }
    }
  }

  fun onClickRecyclerArtistSearchResultLinearArtist(
    view: View,
    position: Int,
    item: ArtistsearchresultRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = ArtistDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = ArtistDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "ARTIST_SEARCH_RESULT_FRAGMENT"

  }
}
