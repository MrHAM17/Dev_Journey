package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowArtistsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.ArtistsRowModel
import kotlin.Int
import kotlin.collections.List

class ArtistsAdapter(
  var list: List<ArtistsRowModel>
) : RecyclerView.Adapter<ArtistsAdapter.RowArtistsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArtistsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_artists,parent,false)
    return RowArtistsVH(view)
  }

  override fun onBindViewHolder(holder: RowArtistsVH, position: Int) {
    val artistsRowModel = ArtistsRowModel()
    // TODO uncomment following line after integration with data source
    // val artistsRowModel = list[position]
    holder.binding.artistsRowModel = artistsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArtistsRowModel>) {
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
      item: ArtistsRowModel
    ) {
    }
  }

  inner class RowArtistsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArtistsBinding = RowArtistsBinding.bind(itemView)
  }
}
