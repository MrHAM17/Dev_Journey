package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSearchresultplaylistBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.model.SearchresultplaylistRowModel
import kotlin.Int
import kotlin.collections.List

class SearchResultPlaylistAdapter(
  var list: List<SearchresultplaylistRowModel>
) : RecyclerView.Adapter<SearchResultPlaylistAdapter.RowSearchresultplaylistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultplaylistVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresultplaylist,parent,false)
    return RowSearchresultplaylistVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultplaylistVH, position: Int) {
    val searchresultplaylistRowModel = SearchresultplaylistRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultplaylistRowModel = list[position]
    holder.binding.searchresultplaylistRowModel = searchresultplaylistRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultplaylistRowModel>) {
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
      item: SearchresultplaylistRowModel
    ) {
    }
  }

  inner class RowSearchresultplaylistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultplaylistBinding = RowSearchresultplaylistBinding.bind(itemView)
    init {
      binding.linearCardBig1.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchresultplaylistRowModel())
      }
    }
  }
}
