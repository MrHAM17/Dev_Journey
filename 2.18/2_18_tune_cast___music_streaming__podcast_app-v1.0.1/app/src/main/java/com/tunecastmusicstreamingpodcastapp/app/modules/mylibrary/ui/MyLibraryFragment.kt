package com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentMyLibraryBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.downloads.ui.DownloadsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.`data`.model.Frame2RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.`data`.viewmodel.MyLibraryVM
import com.tunecastmusicstreamingpodcastapp.app.modules.playlists.ui.PlaylistsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikestabcontainer.ui.YourLikesTabContainerActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MyLibraryFragment : BaseFragment<FragmentMyLibraryBinding>(R.layout.fragment_my_library) {
  private val viewModel: MyLibraryVM by viewModels<MyLibraryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame2RowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    binding.myLibraryVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearDownloads.setOnClickListener {
      val destIntent = DownloadsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearPlaylist.setOnClickListener {
      val destIntent = PlaylistsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearPodcasts.setOnClickListener {
      val destIntent = YourLikesTabContainerActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MY_LIBRARY_FRAGMENT"


    fun getInstance(bundle: Bundle?): MyLibraryFragment {
      val fragment = MyLibraryFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
