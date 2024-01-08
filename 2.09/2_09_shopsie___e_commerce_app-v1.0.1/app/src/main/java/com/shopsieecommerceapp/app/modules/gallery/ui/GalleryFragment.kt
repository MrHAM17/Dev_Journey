package com.shopsieecommerceapp.app.modules.gallery.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentGalleryBinding
import com.shopsieecommerceapp.app.modules.gallery.`data`.model.GalleryRowModel
import com.shopsieecommerceapp.app.modules.gallery.`data`.viewmodel.GalleryVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class GalleryFragment : BaseFragment<FragmentGalleryBinding>(R.layout.fragment_gallery) {
  private val viewModel: GalleryVM by viewModels<GalleryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val galleryAdapter = GalleryAdapter(viewModel.galleryList.value?:mutableListOf())
    binding.recyclerGallery.adapter = galleryAdapter
    galleryAdapter.setOnItemClickListener(
    object : GalleryAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : GalleryRowModel) {
        onClickRecyclerGallery(view, position, item)
      }
    }
    )
    viewModel.galleryList.observe(requireActivity()) {
      galleryAdapter.updateData(it)
    }
    binding.galleryVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerGallery(
    view: View,
    position: Int,
    item: GalleryRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "GALLERY_FRAGMENT"

  }
}
