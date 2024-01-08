package com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentYourLikesBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.`data`.model.YourlikesRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.`data`.viewmodel.YourLikesVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class YourLikesFragment : BaseFragment<FragmentYourLikesBinding>(R.layout.fragment_your_likes) {
  private val viewModel: YourLikesVM by viewModels<YourLikesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val yourLikesAdapter = YourLikesAdapter(viewModel.yourLikesList.value?:mutableListOf())
    binding.recyclerYourLikes.adapter = yourLikesAdapter
    yourLikesAdapter.setOnItemClickListener(
    object : YourLikesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : YourlikesRowModel) {
        onClickRecyclerYourLikes(view, position, item)
      }
    }
    )
    viewModel.yourLikesList.observe(requireActivity()) {
      yourLikesAdapter.updateData(it)
    }
    binding.yourLikesVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerYourLikes(
    view: View,
    position: Int,
    item: YourlikesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "YOUR_LIKES_FRAGMENT"

  }
}
