package com.tunecastmusicstreamingpodcastapp.app.modules.artists.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowArtists1Binding
import com.tunecastmusicstreamingpodcastapp.app.modules.artists.`data`.model.Artists1RowModel
import kotlin.Int
import kotlin.collections.List

class ArtistsAdapter(
  var list: List<Artists1RowModel>
) : RecyclerView.Adapter<ArtistsAdapter.RowArtists1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArtists1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_artists1,parent,false)
    return RowArtists1VH(view)
  }

  override fun onBindViewHolder(holder: RowArtists1VH, position: Int) {
    val artists1RowModel = Artists1RowModel()
    // TODO uncomment following line after integration with data source
    // val artists1RowModel = list[position]
    holder.binding.artists1RowModel = artists1RowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Artists1RowModel>) {
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
      item: Artists1RowModel
    ) {
    }
  }

  inner class RowArtists1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArtists1Binding = RowArtists1Binding.bind(itemView)
  }
}
