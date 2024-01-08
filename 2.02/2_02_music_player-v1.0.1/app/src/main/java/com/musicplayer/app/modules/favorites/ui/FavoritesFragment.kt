package com.musicplayer.app.modules.favorites.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseFragment
import com.musicplayer.app.databinding.FragmentFavoritesBinding
import com.musicplayer.app.modules.artists.ui.ArtistsActivity
import com.musicplayer.app.modules.favorites.`data`.model.FavoritesRowModel
import com.musicplayer.app.modules.favorites.`data`.viewmodel.FavoritesVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FavoritesFragment : BaseFragment<FragmentFavoritesBinding>(R.layout.fragment_favorites) {
  private val viewModel: FavoritesVM by viewModels<FavoritesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val favoritesAdapter = FavoritesAdapter(viewModel.favoritesList.value?:mutableListOf())
    binding.recyclerFavorites.adapter = favoritesAdapter
    favoritesAdapter.setOnItemClickListener(
    object : FavoritesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FavoritesRowModel) {
        onClickRecyclerFavorites(view, position, item)
      }
    }
    )
    viewModel.favoritesList.observe(requireActivity()) {
      favoritesAdapter.updateData(it)
    }
    binding.favoritesVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerFavorites(
    view: View,
    position: Int,
    item: FavoritesRowModel
  ): Unit {
    when(view.id) {
      R.id.linearFavouritesOption -> {
        val destIntent = ArtistsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "FAVORITES_FRAGMENT"


    fun getInstance(bundle: Bundle?): FavoritesFragment {
      val fragment = FavoritesFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
