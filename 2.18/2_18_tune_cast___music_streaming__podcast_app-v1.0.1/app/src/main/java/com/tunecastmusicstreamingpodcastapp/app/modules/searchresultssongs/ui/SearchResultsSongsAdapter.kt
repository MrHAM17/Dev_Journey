package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSearchresultssongsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.model.SearchresultssongsRowModel
import kotlin.Int
import kotlin.collections.List

class SearchResultsSongsAdapter(
  var list: List<SearchresultssongsRowModel>
) : RecyclerView.Adapter<SearchResultsSongsAdapter.RowSearchresultssongsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultssongsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresultssongs,parent,false)
    return RowSearchresultssongsVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultssongsVH, position: Int) {
    val searchresultssongsRowModel = SearchresultssongsRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultssongsRowModel = list[position]
    holder.binding.searchresultssongsRowModel = searchresultssongsRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultssongsRowModel>) {
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
      item: SearchresultssongsRowModel
    ) {
    }
  }

  inner class RowSearchresultssongsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultssongsBinding = RowSearchresultssongsBinding.bind(itemView)
    init {
      binding.linearSongTitle.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchresultssongsRowModel())
      }
    }
  }
}
