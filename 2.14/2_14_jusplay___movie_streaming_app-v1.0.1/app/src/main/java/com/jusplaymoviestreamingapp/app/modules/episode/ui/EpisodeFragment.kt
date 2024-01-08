package com.jusplaymoviestreamingapp.app.modules.episode.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentEpisodeBinding
import com.jusplaymoviestreamingapp.app.modules.episode.`data`.model.EpisodeRowModel
import com.jusplaymoviestreamingapp.app.modules.episode.`data`.viewmodel.EpisodeVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class EpisodeFragment : BaseFragment<FragmentEpisodeBinding>(R.layout.fragment_episode) {
  private val viewModel: EpisodeVM by viewModels<EpisodeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val episodeAdapter = EpisodeAdapter(viewModel.episodeList.value?:mutableListOf())
    binding.recyclerEpisode.adapter = episodeAdapter
    episodeAdapter.setOnItemClickListener(
    object : EpisodeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EpisodeRowModel) {
        onClickRecyclerEpisode(view, position, item)
      }
    }
    )
    viewModel.episodeList.observe(requireActivity()) {
      episodeAdapter.updateData(it)
    }
    binding.episodeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerEpisode(
    view: View,
    position: Int,
    item: EpisodeRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "EPISODE_FRAGMENT"

  }
}
