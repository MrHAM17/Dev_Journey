package com.tikpikshortvideosocialnetworking.app.modules.totallikes.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.DialogTotalLikesBinding
import com.tikpikshortvideosocialnetworking.app.modules.totallikes.`data`.viewmodel.TotalLikesVM
import kotlin.String
import kotlin.Unit

class TotalLikesDialog : BaseDialogFragment<DialogTotalLikesBinding>(R.layout.dialog_total_likes) {
  private val viewModel: TotalLikesVM by viewModels<TotalLikesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.totalLikesVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "TOTAL_LIKES_DIALOG"


    fun getInstance(bundle: Bundle?): TotalLikesDialog {
      val fragment = TotalLikesDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
