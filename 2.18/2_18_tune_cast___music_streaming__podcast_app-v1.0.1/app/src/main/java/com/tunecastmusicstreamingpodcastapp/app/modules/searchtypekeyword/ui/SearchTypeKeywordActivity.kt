package com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySearchTypeKeywordBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.model.SearchtypekeywordRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchtypekeyword.`data`.viewmodel.SearchTypeKeywordVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchTypeKeywordActivity :
    BaseActivity<ActivitySearchTypeKeywordBinding>(R.layout.activity_search_type_keyword) {
  private val viewModel: SearchTypeKeywordVM by viewModels<SearchTypeKeywordVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchTypeKeywordAdapter =
    SearchTypeKeywordAdapter(viewModel.searchTypeKeywordList.value?:mutableListOf())
    binding.recyclerSearchTypeKeyword.adapter = searchTypeKeywordAdapter
    searchTypeKeywordAdapter.setOnItemClickListener(
    object : SearchTypeKeywordAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchtypekeywordRowModel) {
        onClickRecyclerSearchTypeKeyword(view, position, item)
      }
    }
    )
    viewModel.searchTypeKeywordList.observe(this) {
      searchTypeKeywordAdapter.updateData(it)
    }
    binding.searchTypeKeywordVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchTypeKeyword(
    view: View,
    position: Int,
    item: SearchtypekeywordRowModel
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
      const val TAG: String = "SEARCH_TYPE_KEYWORD_ACTIVITY"

    }
  }
