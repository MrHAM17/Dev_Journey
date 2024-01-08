package com.jusplaymoviestreamingapp.app.modules.about.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentAboutBinding
import com.jusplaymoviestreamingapp.app.modules.about.`data`.model.AboutRowModel
import com.jusplaymoviestreamingapp.app.modules.about.`data`.viewmodel.AboutVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AboutFragment : BaseFragment<FragmentAboutBinding>(R.layout.fragment_about) {
  private val viewModel: AboutVM by viewModels<AboutVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val aboutAdapter = AboutAdapter(viewModel.aboutList.value?:mutableListOf())
    binding.recyclerAbout.adapter = aboutAdapter
    aboutAdapter.setOnItemClickListener(
    object : AboutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AboutRowModel) {
        onClickRecyclerAbout(view, position, item)
      }
    }
    )
    viewModel.aboutList.observe(requireActivity()) {
      aboutAdapter.updateData(it)
    }
    binding.aboutVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAbout(
    view: View,
    position: Int,
    item: AboutRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ABOUT_FRAGMENT"

  }
}
