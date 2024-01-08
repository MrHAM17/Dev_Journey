package com.socialsocialnetworking.app.modules.stories.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseFragment
import com.socialsocialnetworking.app.databinding.FragmentStoriesBinding
import com.socialsocialnetworking.app.modules.stories.`data`.model.FrameRowModel
import com.socialsocialnetworking.app.modules.stories.`data`.model.StoriesRowModel
import com.socialsocialnetworking.app.modules.stories.`data`.viewmodel.StoriesVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class StoriesFragment : BaseFragment<FragmentStoriesBinding>(R.layout.fragment_stories) {
  private val viewModel: StoriesVM by viewModels<StoriesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val storiesAdapter = StoriesAdapter(viewModel.storiesList.value?:mutableListOf())
    binding.recyclerStories.adapter = storiesAdapter
    storiesAdapter.setOnItemClickListener(
    object : StoriesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : StoriesRowModel) {
        onClickRecyclerStories(view, position, item)
      }
    }
    )
    viewModel.storiesList.observe(requireActivity()) {
      storiesAdapter.updateData(it)
    }
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FrameRowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    binding.storiesVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerStories(
    view: View,
    position: Int,
    item: StoriesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: FrameRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "STORIES_FRAGMENT"


      fun getInstance(bundle: Bundle?): StoriesFragment {
        val fragment = StoriesFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
