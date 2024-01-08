package com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.BottomsheetNewPlaylistBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.`data`.model.SpinnerEyeModel
import com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.`data`.viewmodel.NewPlaylistVM
import kotlin.String
import kotlin.Unit

class NewPlaylistBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetNewPlaylistBinding>(R.layout.bottomsheet_new_playlist)
    {
  private val viewModel: NewPlaylistVM by viewModels<NewPlaylistVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    viewModel.spinnerEyeList.value = mutableListOf(
    SpinnerEyeModel("Item1"),
    SpinnerEyeModel("Item2"),
    SpinnerEyeModel("Item3"),
    SpinnerEyeModel("Item4"),
    SpinnerEyeModel("Item5")
    )
    val spinnerEyeAdapter =
    SpinnerEyeAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerEyeList.value?:
    mutableListOf())
    binding.spinnerEye.adapter = spinnerEyeAdapter
    binding.newPlaylistVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "NEW_PLAYLIST_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): NewPlaylistBottomsheet {
      val fragment = NewPlaylistBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
