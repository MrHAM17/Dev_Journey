package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSearchresultalbumBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.model.SearchresultalbumRowModel
import kotlin.Int
import kotlin.collections.List

class SearchResultAlbumAdapter(
  var list: List<SearchresultalbumRowModel>
) : RecyclerView.Adapter<SearchResultAlbumAdapter.RowSearchresultalbumVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultalbumVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresultalbum,parent,false)
    return RowSearchresultalbumVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultalbumVH, position: Int) {
    val searchresultalbumRowModel = SearchresultalbumRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultalbumRowModel = list[position]
    holder.binding.searchresultalbumRowModel = searchresultalbumRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultalbumRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: SearchresultalbumRowModel
    ) {
    }
  }

  inner class RowSearchresultalbumVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultalbumBinding = RowSearchresultalbumBinding.bind(itemView)
    init {
      binding.linearCardBig.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchresultalbumRowModel())
      }
    }
  }
}
